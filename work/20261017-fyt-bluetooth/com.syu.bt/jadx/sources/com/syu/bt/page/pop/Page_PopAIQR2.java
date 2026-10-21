package com.syu.bt.page.pop;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemProperties;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.lsec.core.frame.app.MyUi;
import com.lsec.core.frame.ctrl.JButton;
import com.lsec.core.frame.ctrl.JPage;
import com.lsec.core.frame.ctrl.JText;
import com.lsec.core.frame.page.MyPage;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.util.data.FinalCustomer;
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Set;
import com.syu.bt.util.ToastUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopAIQR2 extends MyPage {
    Act_Bt actBt;
    JButton btn_aiqc;
    View ivQR;
    JText txt_aiqc;
    private static String[] khName = {"NULL", "FYT", "SYU", "QLTC", FinalCustomer.VCustYueGe, "MTU", FinalCustomer.VCustZhongYiChang, "RL", FinalCustomer.VCustKaiLiDe, FinalCustomer.VCustPuChengBoAn, FinalCustomer.VCustCheHangJian, "ZX", "YL", FinalCustomer.VCustSiBaiDe, "DC", "KQ", FinalCustomer.VCustCheMeiLi, FinalCustomer.VCustFuFanDa, FinalCustomer.VCustZhuoAoTong, "BYZH", "GM", FinalCustomer.VCustJiaYiTian, FinalCustomer.VCustKaBaiTe, FinalCustomer.VCustHangYun, "RB", FinalCustomer.VCustSanYiZhongHe, "BJ", FinalCustomer.VCustXingJiaLin, "OHA", "KSH", FinalCustomer.VCustFangXiangTong, "AY", "PSD", FinalCustomer.VCustKaiZhen, "FYI", "WEK", FinalCustomer.VCustCheHongSheng, FinalCustomer.VCustJiaLuHua, "ANB", FinalCustomer.VCustFeiAnDa, FinalCustomer.VCustLeiMa, "HOG", FinalCustomer.VCustShengPai, FinalCustomer.VCustJieYou, FinalCustomer.VCustHongChangFu, FinalCustomer.VCustKunDe, FinalCustomer.VCustDongFangQiChen, FinalCustomer.VCustJingCheng, FinalCustomer.VCustDaDiFeiGe, FinalCustomer.VCustSuMaSi, FinalCustomer.VCustZhongRuiChuanNeng, FinalCustomer.VCustHuangYing, "LOM", FinalCustomer.VCustZhiHang, FinalCustomer.VCustYiChang, FinalCustomer.VCustLianYun, FinalCustomer.VCustDanMiao, FinalCustomer.VCustZhongTongFuRui, FinalCustomer.VCustChangTu, FinalCustomer.VCustXinPingHang, FinalCustomer.VCustXingYingTong, FinalCustomer.VCustXingYuan, FinalCustomer.VCustXingHuaChuangNeng, FinalCustomer.VCustDeZhongShangJie, FinalCustomer.VCustFeiYueZhiNeng, FinalCustomer.VCustKeYiAn, FinalCustomer.VCustHanGuoCnc, "MCL", FinalCustomer.VCustLuCheng, FinalCustomer.VCustAoCheKai, FinalCustomer.VCustXingShuo, FinalCustomer.VCustDaoHang, FinalCustomer.VCustMeiLeTu, FinalCustomer.VCustAnChangXing, FinalCustomer.VCustYuHao, FinalCustomer.VCustOTOLUX, FinalCustomer.VCustYongChangDa, FinalCustomer.VCustYiAoDi, FinalCustomer.VCustTongXingBang, FinalCustomer.VCustGuangYou, FinalCustomer.VCustGeShi, FinalCustomer.VCustXingZhiCheng, FinalCustomer.VCustLiTu, FinalCustomer.VCustMeiWeiShi, FinalCustomer.VCustJingRiJia, FinalCustomer.VCustXingWanHe, FinalCustomer.VCustHaoBangShou, FinalCustomer.VCustBeiDouYinHe, FinalCustomer.VCustHongTuTong, FinalCustomer.VCustBaiFuDa, "KDA", "KET", "CLL", "DH", "DZS2", "TZY", "KH", "HLTX", "JKD", "HYUN", "XZHAN", "KAJD", "JLY", "YILT", "GDUH", "LUCH", "KEJD", "TZY2", "CZY", "NIUM", "KYUE", "KEDA", "YUF", "HLYD", "ZHIF", "YIDT", "YIN", "DYT", "ZHTD", "YOUH", "LH", "HAOD", "YUNZ", "KAIQY", "ZHAN2", "KYD2", "FXZL", "YIN2", "HIWORLD", "TUMU", "YUEC", "YIN3", "YIN4", "CMEI", "YUNC", "YXI", "ANC", "LZH", "XYZ", "MTA", "YFEN", "SHITU", "ZHYUN", "DAISI"};
    static boolean isRunnAIUvEcnr = true;
    public static Runnable RunnAIUvEcnr = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopAIQR2.1
        @Override // java.lang.Runnable
        public void run() {
            Page_PopAIQR2.isRunnAIUvEcnr = true;
            Log.d("AIQR1", "  JAVA 11 Page_PopAIQR RunnAIUvEcnr  isRunnAIUvEcnr ");
        }
    };

    public Page_PopAIQR2(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
        Log.d("ai11", "  *** 00 Page_PopAIQR2 init ");
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopAIQR2);
        this.ivQR = pageDlg.getChildViewByid(FinalBtCtrl.iv_aiqr);
        Log.d("ai", "  00 Page_PopAIQR aiStrQR  ");
        String aiStrQR = String.valueOf(SystemProperties.get("serialno")) + App_Bt.mRoPlatForm;
        if (!App_Bt.isNotEmpty(aiStrQR)) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai4"));
            return;
        }
        SystemProperties.set("sys.blinkbt.ai.noise.scan", "1");
        Bitmap bmp = createQRCode(aiStrQR, 350);
        Log.d("ai", "  11 Page_PopAIQR ");
        if (bmp != null && this.ivQR != null) {
            this.ivQR.setBackground(new BitmapDrawable(MyUi.mResources, bmp));
            this.txt_aiqc = (JText) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Text_AI);
            if (this.txt_aiqc != null) {
                this.txt_aiqc.setText(getKHName());
                return;
            }
            return;
        }
        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai6"));
    }

    public static String getKHName() {
        String name;
        int id = SystemProperties.getInt("ro.build.fytmanufacturer", 0);
        if (id >= 0 && id <= 143) {
            name = khName[id];
        } else {
            name = "NULL" + id;
        }
        Log.d("ai", "  22 Page_PopAIQR getKHName id = " + id + " name = " + name);
        return name;
    }

    private Bitmap createQRCode(String content, int size) {
        try {
            Log.d("ai", "  00 createQRCode content = " + content + " size = " + size);
            QRCodeWriter writer = new QRCodeWriter();
            Log.d("ai", "  11 createQRCode content = " + content + " size = " + size);
            Map<EncodeHintType, Object> hints = new HashMap<>();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
            hints.put(EncodeHintType.MARGIN, 1);
            Log.d("ai", "  22 createQRCode content = " + content + " size = " + size);
            BitMatrix matrix = writer.encode(content, BarcodeFormat.QR_CODE, size, size, hints);
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int[] pixels = new int[width * height];
            for (int y = 0; y < height; y++) {
                for (int x = 0; x < width; x++) {
                    pixels[(y * width) + x] = matrix.get(x, y) ? ViewCompat.MEASURED_STATE_MASK : 0;
                }
            }
            Log.d("ai", "  33 createQRCode content = " + content + " size = " + size);
            return Bitmap.createBitmap(pixels, width, height, Bitmap.Config.ARGB_8888);
        } catch (WriterException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void onDismiss() {
        super.onDismiss();
        Main.removeRunnable_Ui(Page_Set.mRunnExitAIQR);
        Main.postRunnable_Ui(true, Page_Set.mRunnExitAIQR, 120000L);
        Log.d("ai11", "  *** 11 Page_PopAIQR2 onDismiss ");
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void resume() {
        super.resume();
        Log.d("ai11", "  *** 11 Page_PopAIQR2 resume ");
    }

    @Override // com.lsec.core.frame.page.MyPage, com.lsec.core.frame.page.IPageNotify
    public void pause() {
        super.pause();
        Log.d("ai11", "  *** 22 Page_PopAIQR2 pause ");
    }
}
