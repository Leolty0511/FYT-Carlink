package com.syu.bt.page.pop;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
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
import com.syu.bt.Act_Bt;
import com.syu.bt.App_Bt;
import com.syu.bt.data.FinalBtCtrl;
import com.syu.bt.page.Page_Set;
import com.syu.bt.util.ToastUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Page_PopAIQR extends MyPage {
    Act_Bt actBt;
    JButton btn_aiqc;
    View ivQR;
    JText txt_aiqc;
    static boolean isRunnAIUvEcnr = true;
    public static Runnable RunnAIUvEcnr = new Runnable() { // from class: com.syu.bt.page.pop.Page_PopAIQR.1
        @Override // java.lang.Runnable
        public void run() {
            Page_PopAIQR.isRunnAIUvEcnr = true;
            Log.d("AIQR1", "  JAVA 11 Page_PopAIQR RunnAIUvEcnr  isRunnAIUvEcnr ");
        }
    };

    public Page_PopAIQR(JPage page, Act_Bt actBt) {
        super(page, App_Bt.getInstance().uiApp);
        this.actBt = actBt;
        JPage pageDlg = actBt.ui.getPage(FinalBtCtrl.Page_PopAIQR);
        this.ivQR = pageDlg.getChildViewByid(FinalBtCtrl.iv_aiqr);
        Log.d("ai", "  00 Page_PopAIQR aiStrQR  ");
        if (!App_Bt.isNotEmpty(App_Bt.aiStrQR)) {
            ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai6"));
            return;
        }
        Bitmap bmp = createQRCode(App_Bt.aiStrQR, 350);
        Log.d("ai", "  11 Page_PopAIQR ");
        if (bmp != null && this.ivQR != null) {
            this.ivQR.setBackground(new BitmapDrawable(MyUi.mResources, bmp));
            Log.d("ai", "  22 Page_PopAIQR  ");
            this.txt_aiqc = (JText) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Text_AI);
            if (this.txt_aiqc != null) {
                if (App_Bt.isAiuvoice) {
                    this.txt_aiqc.setText(App_Bt.getInstance().uiApp.getString("bt_ai5"));
                } else {
                    this.txt_aiqc.setText(App_Bt.getInstance().uiApp.getString("bt_ai7"));
                }
            }
            this.btn_aiqc = (JButton) pageDlg.getChildViewByid(FinalBtCtrl.Pop_Btn_AI);
            if (this.btn_aiqc != null) {
                this.btn_aiqc.setOnTouchListener(new View.OnTouchListener() { // from class: com.syu.bt.page.pop.Page_PopAIQR.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View arg0, MotionEvent event) {
                        switch (event.getAction()) {
                            case 1:
                                Log.d("AIQR1", "  JAVA 00 Page_PopAIQR AIJH BTN  isRunnAIUvEcnr = " + Page_PopAIQR.isRunnAIUvEcnr);
                                Main.removeRunnable_Ui(Page_Set.mRunnAIQR);
                                Main.postRunnable_Ui(true, Page_PopAIQR.RunnAIUvEcnr, 3000L);
                                if (Page_PopAIQR.isRunnAIUvEcnr) {
                                    Page_PopAIQR.isRunnAIUvEcnr = false;
                                    Log.d("AIQR1", "  JAVA 22 Page_PopAIQR AIJH BTN isAiuvoice = " + App_Bt.isAiuvoice);
                                    if (App_Bt.isAiuvoice) {
                                        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai5"));
                                    } else {
                                        int ok1 = App_Bt.getInstance().AIUvEcnr();
                                        Log.d("AIQR1", "  JAVA 33 Page_PopAIQR ActivateCreate ok1 =" + ok1);
                                        if (ok1 == 0) {
                                            if (Page_PopAIQR.this.txt_aiqc != null) {
                                                Page_PopAIQR.this.txt_aiqc.setText(App_Bt.getInstance().uiApp.getString("bt_ai5"));
                                            }
                                            Page_Set.updateAI();
                                            Page_Set.updateAIKG();
                                        } else {
                                            if (Page_PopAIQR.this.txt_aiqc != null) {
                                                Page_PopAIQR.this.txt_aiqc.setText(String.valueOf(App_Bt.getInstance().uiApp.getString("bt_ai7")) + " code : " + ok1);
                                            }
                                            Page_Set.updateAI();
                                            Page_Set.updateAIKG();
                                        }
                                    }
                                    Main.postRunnable_Ui(true, new Runnable() { // from class: com.syu.bt.page.pop.Page_PopAIQR.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Log.d("AIQR1", "  JAVA 44 Page_PopAIQR getDialog().dismiss ");
                                            Page_PopAIQR.this.getPage().getDialog().dismiss();
                                            if (!App_Bt.isAiuvoice) {
                                                ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai6"));
                                            }
                                        }
                                    }, 3000L);
                                    break;
                                }
                            case 0:
                            case 2:
                            default:
                                return true;
                        }
                    }
                });
                return;
            }
            return;
        }
        ToastUtil.getInstance().showMessage(App_Bt.getInstance().uiApp.getString("bt_ai6"));
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
}
