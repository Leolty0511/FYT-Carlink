package e1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseIntArray;
import base.Configure;
import com.syu.jni.ToolsJni;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends e1.c {
    public static int[] Q = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 70, 3, 45, 4, 4, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 113, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 16, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 7, 29, 188, 30, 128, 31, 128, 32, 64, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 58, 45, 90, 46, 64, 47, 0, 48, 158, 49, 32, 50, 1, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};
    public static int[] R = {64, 8, 16, 136, 35, 2, 64, 0, 2, 78, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 112, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 19, 22, 22, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 6, 29, 114, 30, 128, 31, 128, 32, 64, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 42, 45, 90, 46, 64, 47, 0, 48, 157, 49, 202, 50, 1, 51, 208, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 24, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};
    public static int[] S = {64, 8, 16, 136, 35, 2, 64, 0, 2, 66, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 6, 29, 114, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};
    public static final int[] T = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 64, 3, 35, 4, 8, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 80, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 210, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 10, 29, 80, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 186, 50, 46, 51, 144, 52, 0, 53, 5, 54, 220, 55, 0, 56, 64, 57, 12, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 255, 80, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 16, 8, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 64, 0};
    public static final int[] U = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 8, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 115, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 204, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 10, 29, 80, 30, 128, 31, 128, 32, 60, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 42, 45, 84, 46, 64, 47, 0, 48, 165, 49, 134, 50, 251, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 6, 255, 7, 255, 8, 15, 17, 84, 18, 71, 19, 4, 20, 70, 21, 8, 32, 18, 33, 0, 34, 0, 35, 2, 36, 0, 37, 17, 38, 5, 39, 34, 40, 24, 48, 0, 49, 7, 50, 128, 51, 0, 52, 27, 53, 21, 54, 1, 16, 8, 64, 0};
    public static int[] V = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 64, 3, 15, 4, 0, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 16, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 210, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 8, 29, 152, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 64, 57, 12, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 16, 8, 64, 0};
    public static int[] W = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 0, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 114, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 204, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 8, 29, 152, 30, 128, 31, 128, 32, 56, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 26, 45, 84, 46, 64, 47, 0, 48, 165, 49, 149, 50, 224, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 16, 8, 64, 0};
    public static int[] X = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 66, 3, 45, 4, 2, 5, 0, 6, 52, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 80, 18, 64, 19, 0, 20, 0, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 7, 29, 188, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 35, 2, 16, 8, 64, 0};
    public static int[] Y = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 52, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 19, 13, 80, 14, 0, 15, 0, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 73, 23, 188, 24, 20, 25, 240, 26, 7, 27, 0, 28, 9, 29, 56, 30, 128, 31, 128, 32, 64, 33, 132, 34, 54, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 104, 46, 87, 47, 0, 48, 98, 49, 187, 50, 150, 51, 192, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 17, 84, 18, 71, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 2, 52, 27, 35, 66, 16, 8, 64, 0};
    public static int[] Z = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 52, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 19, 13, 81, 14, 0, 15, 0, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 89, 23, 188, 24, 23, 25, 32, 26, 23, 27, 0, 28, 9, 29, 72, 30, 128, 31, 128, 32, 72, 33, 132, 34, 55, 35, 63, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 100, 46, 86, 47, 0, 48, 122, 49, 74, 50, 77, 51, 240, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 17, 84, 18, 71, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 2, 52, 27, 35, 66, 16, 8, 64, 0};

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final int[] f1695a0 = {64, 0, 0, 17, 1, 122, 2, 66, 3, 15, 4, 0, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 96, 18, 80, 19, 0, 20, 0, 21, 3, 22, 112, 23, 208, 24, 40, 25, 224, 26, 18, 27, 0, 28, 3, 29, 90, 30, 128, 31, 128, 32, 24, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 10, 45, 27, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 112, 52, 0, 53, 50, 54, 13, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 3, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 85, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 64, 1, 56, 2, 1, 3, 0, 4, 0, 5, 0, 6, 255, 7, 255, 8, 15, 9, 0, 10, 0, 11, 0, 12, 0, 13, 0, 14, 0, 15, 0, 16, 136, 16, 8, 17, 78, 18, 71, 19, 36, 20, 70, 21, 8, 22, 0, 23, 0, 24, 0, 25, 0, 26, 0, 27, 0, 28, 0, 29, 0, 30, 0, 31, 0, 32, 18, 33, 0, 34, 0, 35, 2, 64, 0};
    public final int A;
    public final int B;
    public boolean C;
    public int D;
    public l0 E;
    public int F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public SparseIntArray L;
    public final Object M;
    public Runnable N;
    public Runnable O;
    public final Runnable P;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f1696x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f1697y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1698z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.E.c(1000)) {
                e.this.E.a();
                e.this.M();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.H();
            e.this.D(64, 0);
            e eVar = e.this;
            eVar.D(42, eVar.D);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = false;
            if (e.this.f1675q && SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                z2 = true;
            }
            if (z2) {
                return;
            }
            e.this.t();
        }
    }

    public e(String str, int i2, Handler handler) {
        super(str, i2, handler);
        this.f1696x = 64;
        this.f1697y = 65;
        this.f1698z = 16;
        this.A = 18;
        this.B = 17;
        this.C = false;
        this.D = 48;
        this.E = new l0();
        this.F = 0;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = 0;
        this.L = new SparseIntArray();
        this.M = new Object();
        this.N = new a();
        this.O = new b();
        this.P = new c();
        this.H = SystemProperties.getInt("sys.syu.dvd_external", 0) == 1;
    }

    public void H() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 20;
        while (true) {
            i2--;
            if (i2 <= 0 || s0.m("sys.fyt.cvbs.iic.busy", -1) != 1) {
                return;
            }
            Log.e("V2850", " ===========>>  iic busy   startTime =  " + jElapsedRealtime);
            Log.e("V2850", " ===========>>  iic busy   startTime =  " + jElapsedRealtime + "  curr =  " + SystemClock.elapsedRealtime());
            a.i.a0(10L);
        }
    }

    public void I() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 20;
        while (true) {
            i2--;
            if (i2 <= 0 || s(64) == 0) {
                return;
            }
            Log.e("V2850", " ===========>>  page != 0   startTime =  " + jElapsedRealtime);
            Log.e("V2850", " ===========>>  page != 0   startTime =  " + jElapsedRealtime + "  curr =  " + SystemClock.elapsedRealtime());
            a.i.a0(10L);
        }
    }

    public boolean J(int i2) {
        boolean zK;
        Log.e("V2850", "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f1673o);
        if (this.f1673o) {
            return false;
        }
        int i3 = u0.b.s1;
        boolean z2 = i3 == 1;
        if (i2 == 0) {
            Log.e("V2850", "flushNtscPal  NOR_CVBS_NTSC");
            zK = K(Y);
        } else if (i2 != 1) {
            if (i2 == 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("flushNtscPal ");
                sb.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("V2850", sb.toString());
                zK = K(z2 ? Q : X);
            } else if (i2 == 3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("flushNtscPal ");
                sb2.append(z2 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
                Log.e("V2850", sb2.toString());
                zK = K(z2 ? R : S);
            } else if (i2 == 6) {
                Log.e("V2850", "flushNtscPal  TVI_1080P_25FPS");
                zK = K(z2 ? U : T);
            } else if (i2 == 7) {
                Log.e("V2850", "flushNtscPal  TVI_1080P_30FPS");
                zK = K(z2 ? W : V);
            } else if (i2 != 13) {
                boolean z3 = i3 == 1;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("flushNtscPal ");
                sb3.append(z3 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("V2850", sb3.toString());
                zK = K(z3 ? Q : X);
            } else {
                Log.e("V2850", "flushNtscPal  NOR_AHD_DVD_NTSC");
                zK = K(f1695a0);
            }
        } else {
            Log.e("V2850", "flushNtscPal  NOR_CVBS_PAL");
            zK = K(Z);
        }
        if (zK) {
            u0.c.P.c(Integer.valueOf(i2));
        }
        return zK;
    }

    public boolean K(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("V2850", "flushParams =============>> i2cInvalid : " + this.f1673o);
        if (this.f1673o) {
            return false;
        }
        H();
        synchronized (this.f1671m) {
            int i2 = -1;
            int length = iArr.length / 2;
            Log.e("V2850", "flushParams  START  data  length = " + iArr.length);
            z2 = true;
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = i3 * 2;
                int i5 = iArr[i4];
                int i6 = iArr[i4 + 1];
                if (i5 == 64) {
                    i2 = i6;
                }
                if (i2 != 0 || (i5 != 16 && i5 != 18 && i5 != 17 && i5 != 65)) {
                    int iD = D(i5, i6);
                    boolean z3 = iD >= 0;
                    Log.e("V2850", String.format("[ %02X,  %02X]", Integer.valueOf(i5), Integer.valueOf(i6)) + "  result : " + z3 + " ret : " + iD);
                    z2 = z3;
                }
                if (!z2) {
                    break;
                }
            }
            Log.e("V2850", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }

    public boolean L() {
        if (k()) {
            return true;
        }
        int iS = s(1) & 255;
        if ((iS & 112) == 112) {
            this.f1680v = 4;
        } else if ((iS & 96) == 96) {
            int i2 = this.f1680v;
            if (i2 < 4) {
                this.f1680v = i2 + 1;
            }
        } else {
            int i3 = this.f1680v;
            if (i3 > 0) {
                if (i3 == 4) {
                    this.f1680v = 0;
                } else if (i3 > 0) {
                    this.f1680v = i3 - 1;
                }
            }
        }
        Log.e("V2850", "  hasSignal()  SURE : imagType :  " + this.f1663e + " last  imagFormat :  " + this.f1664f + " tmp signalOn : " + this.C + " checkCnt : " + this.f1680v + String.format("    0x01 REG : %03X   0x03 REG : %03X", Integer.valueOf(iS), Integer.valueOf(s(3))));
        return this.f1680v >= 4;
    }

    public void M() {
        synchronized (this.f1671m) {
            if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
                return;
            }
            D(64, 0);
            int iS = s(254);
            int iS2 = s(255);
            Log.e("V2850", String.format("    =====     iicerrorcheck   0xFE : %03X,  0xFF : %03X", Integer.valueOf(iS), Integer.valueOf(iS2)));
            if (iS == 40 || iS2 == 80) {
                this.F = 0;
            } else {
                int i2 = this.F + 1;
                this.F = i2;
                if (i2 >= 3) {
                    t();
                }
            }
        }
    }

    public boolean N(int i2) {
        return (this.J || this.H || i2 != 3) ? false : true;
    }

    public void O(int i2) {
        String str = (i2 == 0 || i2 == 1) ? "1" : "0";
        if (s0.o("sys.fyt.cvbs.needdeinterlace", ProxyProperties.LOCAL_EXCL_LIST).equals(str)) {
            return;
        }
        s0.F("sys.fyt.cvbs.needdeinterlace", str);
        Log.e("V2850", "************ ===============needdeinterlace  ntcsPal : " + i2 + "  value: " + str);
    }

    public int P() {
        if (k()) {
            return this.f1664f;
        }
        int i2 = 3;
        switch (s(3) & 7) {
            case 0:
                i2 = 5;
                break;
            case 1:
                i2 = 4;
                break;
            case 2:
                i2 = 7;
                break;
            case 3:
                i2 = 6;
                break;
            case 4:
                break;
            case 5:
                i2 = 2;
                break;
            case 6:
                i2 = 1;
                if (((s(1) >> 2) & 1) == 0) {
                    i2 = 0;
                }
                break;
            case 7:
            default:
                i2 = -1;
                break;
        }
        return p(i2);
    }

    public void Q(boolean z2) {
        this.J = z2;
    }

    public void R(boolean z2) {
        this.I = z2;
    }

    public boolean S() {
        if (s0.m("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return this.C;
        }
        if (k() || N(this.f1663e)) {
            this.C = true;
            return true;
        }
        int iS = s(1);
        boolean z2 = ((iS >> 7) & 1) == 0;
        if (this.C != z2) {
            this.C = z2;
            this.D = z2 ? 48 : 56;
            this.O.run();
            Log.e("V2850", "signalOn    =   " + this.C + String.format("    0x01 REG : %03X", Integer.valueOf(iS)) + "  imagType  = " + this.f1663e + "  imagFormat :  " + this.f1664f + "    hasSingnal:  " + z2);
        }
        return this.C;
    }

    @Override // e1.c, e1.l
    public void a() {
        Log.e("V2850", "  closeVideo   imagType:" + this.f1663e);
        if (k()) {
            u0.d.o3(0);
            return;
        }
        this.f1668j.removeCallbacks(this.P);
        int i2 = this.f1663e;
        super.a();
        if (this.H || i2 != 3) {
            return;
        }
        s0.C(150L);
        if (this.I) {
            t();
        } else if (N(i2)) {
            this.f1664f = 2;
            J(2);
        }
    }

    @Override // e1.c, e1.l
    public synchronized void c(int i2) {
        int iS;
        if (this.f1673o) {
            return;
        }
        int i3 = 1;
        if (k() && this.f1663e == u()) {
            u0.d.S3(i2, 1);
            return;
        }
        int i4 = this.f1663e;
        if (i4 != i2 && i4 != u()) {
            super.c(i2);
            int i5 = u0.b.t4[i2];
            int i6 = 0;
            if (i5 == 1) {
                i3 = 0;
            } else if (i5 != 2) {
                if (i5 != 3) {
                    i3 = i5 != 4 ? -1 : 3;
                } else {
                    i3 = 2;
                }
            }
            if (i3 != -1) {
                while (true) {
                    int iD = D(65, i3);
                    s0.C(5L);
                    iS = s(65);
                    Log.e("V2850", "   channel :  " + i2 + "  vChannel :  " + i3 + "  result:" + iS + " ret :" + iD + " cnt = " + i6);
                    if (iS != i3) {
                        s0.C(20L);
                    }
                    int i7 = i6 + 1;
                    if (i6 >= 5 || iS == i3) {
                        break;
                        break;
                    }
                    i6 = i7;
                }
                Log.e("V2850", "   channel :  " + i2 + "  vChannel :  " + i3 + "   result:" + iS);
                this.f1663e = i2;
                int i8 = this.L.get(i2, -1);
                if (i8 != -1 && i8 != this.f1664f) {
                    Log.e("V2850", "   channel :  " + i2 + " Last imagFormat :  " + i8);
                    J(i8);
                    this.f1664f = i8;
                }
            }
            if (this.f1663e == u()) {
                this.f1668j.removeCallbacks(this.P);
                this.f1668j.postDelayed(this.P, 6000L);
            }
        }
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        synchronized (this.f1671m) {
            if (!k() && !this.f1673o) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                H();
                I();
                D(16, i3 & 255);
                H();
                I();
                D(17, i5 & 255);
                H();
                I();
                D(18, i4 & 255);
                Log.e("V2850", String.format("brightness = %d  , color = %d, contrast = %d   time = %d", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime)));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    @Override // e1.c
    public int j() {
        ?? L;
        int iP;
        Handler handler;
        if (!this.f1667i) {
            return 0;
        }
        if (!k() && (handler = this.f1668j) != null) {
            handler.post(this.N);
        }
        boolean zN = N(this.f1663e);
        synchronized (this.f1671m) {
            D(64, 0);
            S();
            L = !zN ? L() : zN;
            if (this.C) {
                iP = zN ? 13 : P();
            } else {
                iP = -1;
            }
        }
        if (this.C) {
            O(iP);
            if (iP != -1 && this.f1664f != iP) {
                this.f1664f = iP;
                if (this.f1663e != 0) {
                    Log.e("V2850", " record  channel :  " + this.f1663e + " TO  imagFormat :  " + this.f1664f);
                    this.L.put(this.f1663e, this.f1664f);
                }
                Log.e("V2850", "  CHECK SIGNAL  SURE : imagType :  " + this.f1663e + " last     imagFormat :  " + this.f1664f + "   imagFormat:" + iP + " signalOn : " + this.C + "     hasSignal  : " + ((boolean) L));
                J(iP);
            }
        }
        if (this.f1663e == u() && L != 0) {
            this.f1668j.removeCallbacks(this.P);
        }
        return L;
    }

    @Override // e1.c
    public void l() {
        int[] iArr = u0.b.t4;
        iArr[0] = 0;
        iArr[1] = 1;
        iArr[2] = 2;
        iArr[3] = 4;
        iArr[4] = 3;
        iArr[5] = 2;
        iArr[6] = 2;
        iArr[7] = 3;
        iArr[8] = 2;
        iArr[9] = 1;
    }

    @Override // e1.c
    public void m() {
        this.f1664f = Configure.Property.CHIP2850_INIT_FORMAT.d(2);
        Log.e("V2850", " ========>>  flushParams last   imagFormat =  " + this.f1664f);
        synchronized (this.f1671m) {
            if (!k()) {
                D(64, 8);
                D(16, 136);
                s0.C(20L);
                D(16, 8);
                D(64, 0);
            }
        }
        w(J(this.f1664f));
        if (!k()) {
            synchronized (this.f1671m) {
                D(64, 8);
                D(16, 136);
                s0.C(20L);
                D(16, 8);
                D(64, 0);
            }
        }
        Log.e("V2850", " ========>>  flushParams last   imagFormat =  " + this.f1664f + " loaded:" + this.f1667i);
    }

    @Override // e1.c
    public void t() {
        if (k()) {
            return;
        }
        super.t();
        Log.e("V2850", "==============================>> 2850 RESET ");
        ToolsJni.cmd_33_reset_videoIc(1);
        this.F = 0;
    }

    @Override // e1.c
    public int u() {
        if (u0.b.f17357r0 != 1) {
            return 2;
        }
        return super.u();
    }

    @Override // e1.c
    public void y(boolean z2) {
        if (z2) {
            this.f1663e = 0;
            this.f1664f = -1;
            m();
        }
    }

    @Override // e1.c
    public boolean z() {
        Log.e("V2850", "==============================>> 2850 setup() loaded: " + this.f1667i);
        if (k()) {
            return true;
        }
        if (!this.f1667i) {
            t();
        }
        return this.f1667i;
    }
}
