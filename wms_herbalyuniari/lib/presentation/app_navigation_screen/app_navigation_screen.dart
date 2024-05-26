import "package:flutter/material.dart";
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
    super(
      key: key,
    );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard- Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.dashboardContainerScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stok Bahan",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.stokBahanScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stok Produk",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.stokProdukScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Tambah Barang Terdaftar - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.tambahBarangTerdaftarTabContainerScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Konfirmasi penambahan Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.konfirmasiPenambahanBarangScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pengajuan Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.pengajuanBarangScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Konfirmasi Pengajuan Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.konfirmasiPengajuanBarangScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profil",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.profilScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Laporan Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.laporanBarangScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Foto Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.fotoBarangScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "foto Barang One",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.fotoBarangOneScreen),
                          ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lacak Barang",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context, AppRoutes.lacakBarangScreen),
                          )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildAppNavigation(BuildContext context){
    return container(
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.Black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          )
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your apps.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  ///common widget
  Widget _buildScreenTitle(
    BuildContext context, {
      required String screenTitle,
      Function? onTapScreenTitle,
    }
  ) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimary,
        child: column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            )
          ]
        ),
      ),
    );
  }

  //common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ){
    Navigator.pushNamed(context, routeName);
  }
}