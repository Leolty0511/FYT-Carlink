package com.syu.bt.util;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lsec.core.util.FuncUtils;
import com.lsec.core.util.data.AutoKeyEvent;
import com.syu.bt.App_Bt;

/* JADX INFO: loaded from: classes.dex */
public class MyCircleDialog extends Dialog {
    Activity activity;
    AnimationDrawable frameAnim;
    LinearLayout ll;
    TextView tvMessage;
    float x_dialog;

    public MyCircleDialog(Activity activity, int offX, int offY) {
        super(activity, FuncUtils.getIdStyle(activity, "Dialog"));
        this.x_dialog = 0.0f;
        this.activity = activity;
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.3f;
        lp.gravity = 1;
        lp.x = offX;
        lp.y = offY;
        lp.width = -2;
        lp.height = -2;
        getWindow().setAttributes(lp);
        getWindow().setBackgroundDrawable(App_Bt.getInstance().uiApp.getDrawableFromPath("loading_dialog_bg", null, null));
        Log.d("gdy7", " 00 MyCircleDialog lp.width = " + lp.width + " height = " + lp.height);
        getWindow().setWindowAnimations(FuncUtils.getIdStyle(activity, "fade_anim_style"));
    }

    public MyCircleDialog(Context context, int offX, int offY) {
        super(context, FuncUtils.getIdStyle(context, "Dialog"));
        this.x_dialog = 0.0f;
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.3f;
        lp.gravity = 1;
        lp.x = offX;
        lp.y = offY;
        lp.width = -2;
        lp.height = -2;
        Log.d("gdy7", " 11 MyCircleDialog lp.width = " + lp.width + " height = " + lp.height);
        getWindow().setAttributes(lp);
        getWindow().setBackgroundDrawable(App_Bt.getInstance().uiApp.getDrawableFromPath("loading_dialog_bg", null, null));
        getWindow().setWindowAnimations(FuncUtils.getIdStyle(context, "fade_anim_style"));
    }

    public void showDialog(CharSequence message, int textColor, int textSize, Typeface tf) {
        ImageView iv;
        AnimationDrawable Anim;
        if (this.ll != null) {
            this.ll.removeAllViews();
            this.ll = null;
        }
        Log.d("ggg", " --- 00 showDialog message " + ((Object) message));
        if (this.activity != null) {
            this.ll = new LinearLayout(this.activity);
        } else {
            this.ll = new LinearLayout(App_Bt.getInstance().uiApp.mContext);
        }
        this.ll.setOrientation(1);
        this.ll.setGravity(1);
        this.ll.removeAllViews();
        if (this.activity != null) {
            iv = new ImageView(this.activity);
        } else {
            iv = new ImageView(App_Bt.getInstance().uiApp.mContext);
        }
        boolean showTxt = true;
        if ((App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_BT_1920")) && message.equals(App_Bt.getInstance().uiApp.getString("bt_download"))) {
            showTxt = false;
            if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                Anim = (AnimationDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath("loading2000_anim", null, null);
            } else {
                Anim = (AnimationDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath("loading_anim", null, null);
            }
            iv.setBackground(Anim);
        } else {
            AnimationDrawable Anim2 = null;
            if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                Anim2 = (AnimationDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath("loading2000_anim_list", null, null);
            }
            if (Anim2 == null) {
                Anim2 = (AnimationDrawable) App_Bt.getInstance().uiApp.getDrawableFromPath("loading_anim_list", null, null);
            }
            iv.setBackground(Anim2);
        }
        iv.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        if (iv.getBackground() != null) {
            this.frameAnim = (AnimationDrawable) iv.getBackground();
        }
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2);
        if (CustomerUtil.isYFConfig() && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
            lp = new LinearLayout.LayoutParams(240, 240);
        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") && BTUtil.getInstance().getWindowManeger()[0] == 2000) {
            if (message.equals(App_Bt.getInstance().uiApp.getString("bt_download"))) {
                lp = new LinearLayout.LayoutParams(AutoKeyEvent.KEYCODE_EQ, 218);
            } else {
                lp = new LinearLayout.LayoutParams(280, 280);
            }
        } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            Log.d("gdy7", " 11 showDialog width = " + BTUtil.getInstance().getWindowManeger()[0]);
            if (BTUtil.getInstance().getWindowManeger()[0] >= 1920) {
                lp = new LinearLayout.LayoutParams(200, 200);
            } else if (BTUtil.getInstance().getWindowManeger()[0] < 1280) {
                lp = new LinearLayout.LayoutParams(100, 100);
            } else {
                lp = new LinearLayout.LayoutParams(150, 150);
            }
        } else if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
            lp = new LinearLayout.LayoutParams(240, 240);
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
            lp.leftMargin = 0;
            lp.rightMargin = 0;
            lp.bottomMargin = 0;
        } else {
            lp.leftMargin = 20;
            lp.rightMargin = 20;
            lp.bottomMargin = 5;
        }
        if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
            int margin = 50;
            int margin_bottom = 100;
            Log.d("gdy7", " 11 showDialog width = " + BTUtil.getInstance().getWindowManeger()[0] + "," + BTUtil.getInstance().getWindowManeger()[1]);
            if (BTUtil.getInstance().getWindowManeger()[0] <= 800 || BTUtil.getInstance().getWindowManeger()[1] <= 800) {
                margin = 20;
                margin_bottom = 50;
            }
            lp.leftMargin = margin;
            lp.rightMargin = margin;
            lp.topMargin = margin;
            lp.bottomMargin = margin_bottom;
            lp.gravity = 1;
            Log.d("gdy7", " 11 showDialog leftMargin = " + lp.leftMargin);
        }
        this.ll.addView(iv, lp);
        if (!App_Bt.mStrCustomer.equalsIgnoreCase("TZY_UI5") && showTxt) {
            if (this.activity != null) {
                this.tvMessage = new TextView(this.activity);
            } else {
                this.tvMessage = new TextView(App_Bt.getInstance().uiApp.mContext);
            }
            if (tf != null) {
                this.tvMessage.setTypeface(tf);
            }
            this.tvMessage.setSingleLine();
            this.tvMessage.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            this.tvMessage.setFocusableInTouchMode(true);
            this.tvMessage.requestFocus();
            this.tvMessage.setTextColor(textColor);
            this.tvMessage.setTypeface(Typeface.MONOSPACE);
            this.tvMessage.setTextSize(0, textSize);
            this.tvMessage.setGravity(17);
            this.tvMessage.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            this.tvMessage.setText(message);
            if (App_Bt.mStrCustomer.equalsIgnoreCase("TZY_NEW") || App_Bt.mStrCustomer.equalsIgnoreCase("TZY_OEM")) {
                LinearLayout.LayoutParams lpTxt = new LinearLayout.LayoutParams(-1, -2);
                if (BTUtil.getInstance().getWindowManeger()[0] == 2000) {
                    lpTxt.topMargin = -100;
                } else {
                    lpTxt.topMargin = -65;
                }
                this.ll.addView(this.tvMessage, lpTxt);
            } else if (App_Bt.mStrCustomer.equalsIgnoreCase("BT_23NEW")) {
                LinearLayout.LayoutParams lpTxt2 = new LinearLayout.LayoutParams(-1, -2);
                if (BTUtil.getInstance().getWindowManeger()[0] <= 800 || BTUtil.getInstance().getWindowManeger()[1] <= 800) {
                    lpTxt2.topMargin = -30;
                } else {
                    lpTxt2.topMargin = -65;
                }
                this.ll.addView(this.tvMessage, lpTxt2);
            } else {
                this.ll.addView(this.tvMessage);
            }
        }
        if (this.frameAnim != null) {
            this.frameAnim.start();
        }
        if (this.activity != null) {
            setContentView(this.ll);
            setOwnerActivity(this.activity);
        }
        Log.d("POP", "x_dialog" + this.x_dialog + "LEFT:" + this.ll.getLeft());
        setCanceledOnTouchOutside(false);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.syu.bt.util.MyCircleDialog.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialog) {
                if (MyCircleDialog.this.ll != null) {
                    MyCircleDialog.this.ll.removeAllViews();
                    MyCircleDialog.this.ll = null;
                }
                if (MyCircleDialog.this.frameAnim != null) {
                    MyCircleDialog.this.frameAnim.stop();
                    MyCircleDialog.this.frameAnim = null;
                }
            }
        });
    }

    public void showTxt(CharSequence message) {
        if (this.tvMessage != null) {
            this.tvMessage.setText(message);
        }
    }

    public String getTxt() {
        if (this.tvMessage != null) {
            return this.tvMessage.getText().toString();
        }
        return null;
    }
}
