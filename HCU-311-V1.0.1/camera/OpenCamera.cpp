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
#include <sys/time.h>

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
  //  float svm_data[4]={0.03946721,-0.32626311,0.27886255,0.69671009};
    float svm_data[4]={0.02659951,-0.07530305,0.05106738,-2.14228044};
  
    memcpy(&imageData,svm_data,sizeof(struct image_config));
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

  // struct timeval timeStart, timeend;
  // double runtime = 0;

    while(1){
       // gettimeofday(&timeStart, NULL);
    
        capture >> srcImage;
      
        resize(srcImage,srcImage,cv::Size(640,480));
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
      
	char buffer[50];
	int j;
	j = sprintf(buffer,"radius:%d",coordinate.radius);
 
	cv::putText(grayImage, buffer, Point(20,50), cv::FONT_HERSHEY_COMPLEX,2,cv::Scalar(0,0,255),2);

    //add x,y axis and spherical center coorinates in the picture 
    cv::circle(grayImage,point,4,cv::Scalar(0,0,255));
    cv::circle(grayImage,point,coordinate.radius,cv::Scalar(0,0,255)); //circle
    cv::arrowedLine(grayImage,Point(0,240),Point(640,240),cv::Scalar(0,0,0),2);  //X
    cv::arrowedLine(grayImage,Point(320,480),Point(320,0),cv::Scalar(0,0,0),2);  //Y
    spot1x = coordinate.col+coordinate.radius+10;    //spot 1 and 2 coordinates
    spot1y = coordinate.row+coordinate.radius+10;
    spot2x = coordinate.col+coordinate.radius+40;
    spot2y = coordinate.row+coordinate.radius+10;
    cv::line(grayImage,Point(coordinate.col,coordinate.row),Point(spot1x,spot1y),cv::Scalar(255,0,0),2);  
    cv::line(grayImage,Point(spot1x,spot1y),Point(spot2x,spot2y),cv::Scalar(255,0,0),2);
    char bufferx[10];
    int w;
    w = sprintf(bufferx,"x:%d",point.x-320);
    cv::putText(grayImage,bufferx,Point(spot2x,spot2y),cv::FONT_HERSHEY_COMPLEX,1,cv::Scalar(0,0,255),1); //x coordinates 
    char buffery[10];
    int m;
    m = sprintf(buffery,"y:%d",point.y-240);  
    cv::putText(grayImage,buffery,Point(spot2x,spot2y+30),cv::FONT_HERSHEY_COMPLEX,1,cv::Scalar(0,0,255),1); //y coordinates

	imshow("a",grayImage);
    resize(srcImage,srcImage,cv::Size(640,480));
	waitKey(1);


//	imshow("a",srcImage);
//	waitKey(1);
//     gettimeofday(&timeend, NULL);
//     runtime =  (timeend.tv_sec-timeStart.tv_sec)+(double)(timeend.tv_usec-timeStart.tv_usec)/1000000;
//     printf("runtime,%lf\n",runtime);

    }
    close(fd);
    return 0;

}

