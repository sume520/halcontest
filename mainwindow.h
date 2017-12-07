#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <halconcpp/HalconCpp.h>
using namespace HalconCpp;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

    // Local iconic variables
      HObject  ho_Image, ho_Edges, ho_Region, ho_all;
      HObject  ho_inner, ho_AllBinImage, ho_ROI_0, ho_BinImage;
      HObject  ho_ImageSub1, ho_Regions1, ho_RegionErosion, ho_Circle;
      HObject  ho_BinImage1, ho_RegionDilation, ho_BinImage2, ho_ImageSub2;
      HObject  ho_Regions2, ho_RegionErosion1;

      // Local control variables
      HTuple  hv_WindowHandle, hv_AcqHandle, hv_InnerRow;
      HTuple  hv_InnerColumn, hv_InnerRadius, hv_Row, hv_Column;
      HTuple  hv_Radius, hv_Row1, hv_Column1, hv_Phi, hv_Length1;
      HTuple  hv_Length2, hv_Row2, hv_Column2, hv_Phi1, hv_Length11;
      HTuple  hv_Length21;

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
      void on_pushButton_clicked();

      void on_pushButton_2_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
