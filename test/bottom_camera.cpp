#include "opencv2/aruco.hpp"
#include "opencv2/opencv.hpp"
#include <iostream>

using namespace cv;
using namespace std;

class BottomCamera{
public:
    //constructor
    BottomCamera(){
        this->inputVideo.open(0);
        this->cameraMatrix = (Mat_<double>(3,3) << 511.30105788, 0.0         , 330.14455905, 
                                             0.0         , 510.54688952, 247.69595943, 
                                             0.0         , 0.0         , 1.0);
        this->distCoeffs = (Mat_<double>(1,5) << 0.18435012, -0.57693444, 0.00853163, 0.00982479, 0.46038521);
        // Set coordinate system
        
        this->objPoints.ptr<cv::Vec3f>(0)[0] = cv::Vec3f(-markerLength/2.f, markerLength/2.f, 0);
        objPoints.ptr<cv::Vec3f>(0)[1] = cv::Vec3f(markerLength/2.f, markerLength/2.f, 0);
        objPoints.ptr<cv::Vec3f>(0)[2] = cv::Vec3f(markerLength/2.f, -markerLength/2.f, 0);
        objPoints.ptr<cv::Vec3f>(0)[3] = cv::Vec3f(-markerLength/2.f, -markerLength/2.f, 0);
    }

    //main function
    void main(){}
    std::vector<float> getLocation(){
        cv::Mat image, imageCopy;
        this->inputVideo.retrieve(image);
        image.copyTo(imageCopy);
        std::vector<int> ids;
        std::vector<std::vector<cv::Point2f>> corners;
        this->detector.detectMarkers(image, corners, ids);
        // If at least one marker detected
        if (ids.size() > 0) {
            // cv::aruco::drawDetectedMarkers(imageCopy, corners, ids);
            int nMarkers = corners.size();
            std::vector<cv::Vec3d> rvecs(nMarkers), tvecs(nMarkers);
            // Calculate pose for each marker
            for (int i = 0; i < nMarkers; i++) {
                solvePnP(objPoints, corners.at(i), cameraMatrix, distCoeffs, rvecs.at(i), tvecs.at(i));
            }
            float x = tvecs.at(0)[0];
            float y = tvecs.at(0)[1];
            float z = tvecs.at(0)[2];
            std::cout << "x: " << x << " y: " << y << " z: " << z << std::endl;
            float roll = rvecs.at(0)[0];
            float pitch = rvecs.at(0)[1];
            float yaw = rvecs.at(0)[2];
            std::cout << "roll: " << roll << " pitch: " << pitch << " yaw: " << yaw << std::endl;
            std::vector<float> location = {x, y, z};
        }
    }
private:
    cv::VideoCapture inputVideo;
    cv::Mat cameraMatrix, distCoeffs;
    float markerLength = 0.05;
    cv::aruco::DetectorParameters detectorParams = cv::aruco::DetectorParameters();
    cv::aruco::Dictionary dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_6X6_250);
    aruco::ArucoDetector detector(dictionary, detectorParams);
    cv::Mat objPoints(4, 1, CV_32FC3);
}