#include "ros/ros.h"
#include <std_msgs/Float32.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <ball_detected/image.h>
#include <unistd.h>
#include <stdio.h>
#include <iostream>
#include <fcntl.h>
#include <string.h>
#include <sys/ioctl.h>
#include <math.h>
#include <linux/types.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/opencv.hpp>
#include <linux/videodev2.h>
#include <vector>
#define IMAGE_IOC_MAGIC		0xFE

struct image_config {
	__u32	svm_w0;
	__u32	svm_w1;
	__u32	svm_w2;
	__u32	svm_b;
};

struct image_coordinate {
	__u32	row;
	__u32	col;
	__u32	radius;
	__u32	area;
};

#define IMAGE_WR_CONTROL	_IOW(IMAGE_IOC_MAGIC, 1, __u8)
#define IMAGE_WR_CONFIG		_IOW(IMAGE_IOC_MAGIC, 2, struct image_config)
#define	IMAGE_RD_OUTPUT		_IOR(IMAGE_IOC_MAGIC, 3, struct image_coordinate)

using namespace std;
using namespace cv;
Mat srcImage,grayImage;

int main(int argc, char** argv){
    int fd;
    int ret = 0;
    cv::Point point;
    struct image_config imageData;
    struct image_coordinate coordinate;

    ros::init(argc, argv, "camera");
    ros::NodeHandle nh;
    ros::Publisher pub_detected = nh.advertise<std_msgs::Bool>("camera_detected",10);
    ros::Publisher pub_position = nh.advertise<ball_detected::image>("ball_position",10);
    ros::Publisher pub_area = nh.advertise<std_msgs::Int32>("ball_area",10);

    float A,B,distance;
    if(nh.getParam("A", A))
         ROS_INFO("A is %f", A);
    else
         ROS_WARN("didn't find parameter A");
    if(nh.getParam("B", B))
         ROS_INFO("B is %f", B);
    else
         ROS_WARN("didn't find parameter B");

/*********
    std::vector<float> a_list;
    if (nh.getParam("a_list",a_list))
	ROS_INFO("get a_list");
    else
	ROS_WARN("NO find a_list");

    int i ;
    for (i = 0 ; i<4 ; i++){
    ROS_INFO("%f",a_list[i]);
    }
**********/
  //  float svm_data[4]={0.03946721,-0.32626311,0.27886255,0.69671009};
   // float svm_data[4]={0.02659951,-0.07530305,0.05106738,-2.14228044};
    std::vector<float> svm_data;
    if (nh.getParam("svm_data",svm_data))
        ROS_INFO("get vector");
    else
	ROS_WARN("didn't find vector");
//    nh.getParam("svm_data",svm_data);
 //   int i;   
 //   float svm[4] ;
   // for (i = 0 ;i<4; i++)
    //{
     //   svm[i] =svm_data[i];
  //  }
//    for(i=0;i<4;i++){
 //   printf("%d",svm[i]);
   // }
    memcpy(&imageData,&svm_data[0],sizeof(struct image_config));
    fd = open("/dev/image", O_RDWR);
//    ret = ioctl(fd,IMAGE_WR_CONFIG,svm_data);
    ret = ioctl(fd,IMAGE_WR_CONFIG,&imageData);
    if(ret != 0){
        printf("config error");
    }
    VideoCapture capture(0);
    ret = ioctl(fd,IMAGE_WR_CONTROL,1);
    if(ret != 0){
        printf("control error");
    }

    VideoWriter writer("/root/HCU-311/Video_original.avi", CV_FOURCC('M','P','4','2'), 5.0, Size(640, 480));
    VideoWriter writer1("/root/HCU-311/Video_handle.avi", CV_FOURCC('M','P','4','2'), 5.0, Size(640, 480));
    ros::Rate loop_rate(20);
    while(ros::ok()){
	
	std_msgs::Bool msg;
	ball_detected::image image_msg;
	std_msgs::Int32 radius;

        capture >> srcImage;
	//srcImage = imread("/root/HCU-311/003/left4.jpg");
        //resize(srcImage,srcImage,cv::Size(1280,480));
        resize(srcImage,srcImage,cv::Size(640,480));
       //Rect leftRect(0,0,640,480);
       // Rect rightRect(640,0,640,480);
       // srcImage(leftRect).copyTo(srcImage_l);
	grayImage = srcImage.clone();
        uchar* data_l = srcImage.ptr<uchar>(0);
        uchar* data1_l = grayImage.ptr<uchar>(0);
        ret = write(fd,data_l,640*480*3);
        if(ret != 0){
            printf("write error\n");
        }
	ret = ioctl(fd,IMAGE_RD_OUTPUT,&coordinate);
	printf("%d %d %d %d\n",coordinate.radius,coordinate.row,coordinate.col,coordinate.area);
        if(ret != 0){
            printf("write error1\n");
        }
	ret = read(fd,data1_l,640*480*3);
	if(ret != 0){
		printf("read error\n");
	}
	point.x = coordinate.col;
        point.y = coordinate.row;
        //caculate the distance from camera to ball and show in the  picture
	//float distance;
	//float A = 6.03783,B = 11977.35761;
	//float A,B;
	//if(nh.getParam("A", A))
	//	ROS_INFO("A is %f", A);
	//else
	//	ROS_WARN("didn't find parameter A");
	//if(nh.getParam("B", B))
	//	ROS_INFO("B is %f", B);
	//else
	//	ROS_WARN("didn't find parameter B");
	
	distance = B/(coordinate.radius - A);
        printf("distance,%f\n",distance);
	char buffer[50], buffer_distance[50];
	int j ,k;
	j = sprintf(buffer,"radius:%d",coordinate.radius);
 	k = sprintf(buffer_distance,"distance:%f",distance);
	cv::putText(grayImage, buffer, Point(20,50), cv::FONT_HERSHEY_COMPLEX,2,cv::Scalar(0,0,255),2);
        cv::circle(grayImage,point,4,cv::Scalar(0,0,255));
	
	cv::putText(grayImage, buffer_distance, Point(20,120), cv::FONT_HERSHEY_COMPLEX,2,cv::Scalar(0,0,255),2);
	imshow("b",grayImage);
	imshow("a",srcImage);
        resize(srcImage,srcImage,cv::Size(640,480));
//	cv::putText(grayImage, "coordinate.radius", Point(50,150), cv::FONT_HERSHEY_COMPLEX,2,cv::Scalar(0,0,255),2);

	if (srcImage.empty()) break;
	writer << srcImage;

	//waitKey(1);
	radius.data = coordinate.radius;
	if(coordinate.radius >= 6)
	{
		msg.data = true;
	  	point.x = coordinate.col;
		point.y = coordinate.row;
		//printf("ok\n");
	}
	else{
		msg.data = false;
		point.x = 0;
		point.y = 0;
	}
	image_msg.x = point.x;
	image_msg.y = point.y;

	pub_detected.publish(msg);
	pub_area.publish(radius);
	pub_position.publish(image_msg);
	
	writer1 << grayImage;
        waitKey(1);
	loop_rate.sleep();
    }
    close(fd);
    return 0;

}

