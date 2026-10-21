package f1;

import android.net.ConnectivityManager;
import android.net.ProxyProperties;
import android.os.Handler;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.util.Log;
import android.util.SparseArray;
import com.syu.jni.SyuJniNative;
import com.syu.jni.ToolsJni;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class b extends q {

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int[] f1920n0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 70, 3, 45, 4, 4, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 113, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 16, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 7, 29, 188, 30, 128, 31, 128, 32, 64, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 58, 45, 90, 46, 64, 47, 0, 48, 158, 49, 32, 50, 1, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int[] f1921o0 = {64, 8, 16, 136, 35, 2, 64, 0, 2, 78, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 112, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 19, 22, 22, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 6, 29, 114, 30, 128, 31, 128, 32, 64, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 42, 45, 90, 46, 64, 47, 0, 48, 157, 49, 202, 50, 1, 51, 208, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 24, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int[] f1922p0 = {64, 8, 16, 136, 35, 2, 64, 0, 2, 66, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 6, 29, 114, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 16, 8, 35, 2, 64, 0};

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final int[] f1923q0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 64, 3, 35, 4, 8, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 80, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 210, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 10, 29, 80, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 186, 50, 46, 51, 144, 52, 0, 53, 5, 54, 220, 55, 0, 56, 64, 57, 12, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 255, 80, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 16, 8, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 64, 0};

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int[] f1924r0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 8, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 115, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 204, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 10, 29, 80, 30, 128, 31, 128, 32, 60, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 42, 45, 84, 46, 64, 47, 0, 48, 165, 49, 134, 50, 251, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 6, 255, 7, 255, 8, 15, 17, 84, 18, 71, 19, 4, 20, 70, 21, 8, 32, 18, 33, 0, 34, 0, 35, 2, 36, 0, 37, 17, 38, 5, 39, 34, 40, 24, 48, 0, 49, 7, 50, 128, 51, 0, 52, 27, 53, 21, 54, 1, 16, 8, 64, 0};

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int[] f1925s0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 64, 3, 15, 4, 0, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 16, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 210, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 8, 29, 152, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 64, 57, 12, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 16, 8, 64, 0};

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int[] f1926t0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 122, 2, 68, 3, 11, 4, 0, 5, 0, 6, 50, 7, 128, 8, 0, 9, 36, 10, 72, 11, 192, 12, 3, 13, 114, 14, 0, 15, 0, 16, 0, 17, 64, 18, 64, 19, 0, 20, 0, 21, 3, 22, 204, 23, 128, 24, 41, 25, 56, 26, 71, 27, 0, 28, 8, 29, 152, 30, 128, 31, 128, 32, 56, 33, 70, 34, 54, 35, 60, 36, 4, 37, 254, 38, 1, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 26, 45, 84, 46, 64, 47, 0, 48, 165, 49, 149, 50, 224, 51, 96, 52, 0, 53, 5, 54, 220, 55, 0, 56, 0, 57, 28, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 0, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 176, 0, 177, 0, 178, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 68, 1, 56, 2, 1, 8, 15, 19, 4, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 12, 52, 27, 35, 2, 16, 8, 64, 0};

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int[] f1927u0 = {64, 8, 16, 136, 35, 2, 64, 0, 0, 17, 1, 126, 2, 66, 3, 45, 4, 2, 5, 0, 6, 50, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 80, 18, 64, 19, 0, 20, 0, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 27, 0, 28, 7, 29, 188, 30, 128, 31, 128, 32, 48, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 74, 44, 10, 45, 48, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 144, 52, 0, 53, 37, 54, 220, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 64, 8, 0, 64, 1, 56, 2, 1, 7, 255, 8, 15, 17, 84, 18, 71, 19, 36, 20, 70, 21, 8, 32, 18, 37, 8, 38, 1, 39, 4, 52, 27, 35, 2, 16, 8, 64, 0};

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int[] f1928v0 = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 52, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 19, 13, 80, 14, 0, 15, 0, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 73, 23, 188, 24, 20, 25, 240, 26, 7, 27, 0, 28, 9, 29, 56, 30, 128, 31, 128, 32, 64, 33, 132, 34, 54, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 104, 46, 87, 47, 0, 48, 98, 49, 187, 50, 150, 51, 192, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 17, 84, 18, 71, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 2, 52, 27, 35, 66, 16, 8, 64, 0};

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int[] f1929w0 = {64, 8, 16, 136, 35, 66, 64, 0, 2, 71, 5, 0, 6, 52, 7, 192, 8, 144, 9, 36, 10, 72, 11, 192, 12, 19, 13, 81, 14, 0, 15, 0, 16, 248, 17, 64, 18, 96, 19, 0, 20, 0, 21, 19, 22, 89, 23, 188, 24, 23, 25, 32, 26, 23, 27, 0, 28, 9, 29, 72, 30, 128, 31, 128, 32, 72, 33, 132, 34, 55, 35, 63, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 112, 44, 42, 45, 100, 46, 86, 47, 0, 48, 122, 49, 74, 50, 77, 51, 240, 52, 0, 53, 101, 54, 220, 55, 0, 56, 0, 57, 4, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 65, 0, 76, 64, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 181, 0, 182, 0, 183, 0, 185, 0, 186, 0, 188, 0, 190, 0, 230, 0, 231, 19, 232, 3, 239, 0, 240, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, 250, 136, 251, 0, 252, 0, 64, 8, 0, 64, 1, 56, 2, 1, 8, 15, 17, 84, 18, 71, 19, 36, 20, 87, 21, 12, 32, 18, 37, 4, 38, 0, 39, 2, 52, 27, 35, 66, 16, 8, 64, 0};

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int[] f1930x0 = {64, 0, 0, 17, 1, 122, 2, 66, 3, 15, 4, 0, 5, 0, 6, 50, 7, 192, 8, 0, 9, 36, 10, 72, 11, 192, 12, 67, 13, 80, 14, 0, 15, 0, 16, 0, 17, 96, 18, 80, 19, 0, 20, 0, 21, 3, 22, 112, 23, 208, 24, 40, 25, 224, 26, 18, 27, 0, 28, 3, 29, 90, 30, 128, 31, 128, 32, 24, 33, 134, 34, 56, 35, 60, 36, 4, 37, 255, 38, 5, 39, 45, 40, 0, 41, 72, 42, 48, 43, 96, 44, 10, 45, 27, 46, 112, 47, 0, 48, 72, 49, 187, 50, 46, 51, 112, 52, 0, 53, 50, 54, 13, 55, 0, 56, 0, 57, 8, 58, 50, 59, 38, 60, 0, 61, 96, 62, 0, 63, 0, 64, 0, 65, 3, 66, 0, 67, 0, 68, 0, 69, 0, 70, 0, 71, 0, 72, 0, 73, 0, 74, 0, 75, 0, 76, 64, 77, 0, 78, 0, 79, 0, 80, 0, 81, 0, 82, 0, 83, 0, 84, 0, 85, 0, 179, 250, 180, 0, 181, 0, 182, 0, 183, 0, 184, 0, 185, 0, 186, 0, 187, 0, 188, 0, 189, 0, 190, 0, 191, 0, 192, 0, 193, 0, 194, 11, 195, 12, 196, 0, 197, 0, 198, 31, 199, 120, 200, 39, 201, 0, 202, 0, 203, 7, 204, 8, 205, 0, 206, 0, 207, 4, 208, 0, 209, 0, 210, 96, 211, 16, 212, 6, 213, 190, 214, 57, 215, 39, 216, 0, 217, 0, 218, 0, 219, 0, 220, 0, 221, 0, 222, 0, 223, 0, 224, 0, 225, 0, 226, 0, 227, 0, 228, 0, 229, 0, 230, 0, 231, 19, 232, 3, 233, 0, 234, 0, 235, 0, 236, 0, 237, 0, 238, 0, 239, 0, 240, 0, i.a.Theme_actionModeShareDrawable, 0, i.a.Theme_actionModeFindDrawable, 0, i.a.Theme_actionModeWebSearchDrawable, 0, i.a.Theme_actionModePopupWindowStyle, 32, i.a.Theme_preferenceFragmentStyle, 16, i.a.Theme_preferencePanelStyle, 0, i.a.Theme_preferenceHeaderPanelStyle, 0, 248, 0, 249, 0, 250, 136, 251, 0, 252, 0, i.a.Theme_dialogTitleDecorLayout, 0, 254, 40, 64, 8, 0, 64, 1, 56, 2, 1, 3, 0, 4, 0, 5, 0, 6, 255, 7, 255, 8, 15, 9, 0, 10, 0, 11, 0, 12, 0, 13, 0, 14, 0, 15, 0, 16, 136, 16, 8, 17, 78, 18, 71, 19, 36, 20, 70, 21, 8, 22, 0, 23, 0, 24, 0, 25, 0, 26, 0, 27, 0, 28, 0, 29, 0, 30, 0, 31, 0, 32, 18, 33, 0, 34, 0, 35, 2, 64, 0};
    public final int P;
    public final int Q;
    public final int R;
    public final int S;
    public final int T;
    public boolean U;
    public int V;
    public l0 W;
    public l0 X;
    public int Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f1931a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f1932b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1933c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f1934d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public volatile boolean f1935e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Runnable f1936f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public SparseArray<e> f1937g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public Runnable f1938h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public Runnable f1939i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final Runnable f1940j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f1941k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f1942l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f1943m0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SyuJniNative.getInstance().syu_jni_command(i.a.Theme_dialogTitleDecorLayout, null, null);
        }
    }

    /* JADX INFO: renamed from: f1.b$b, reason: collision with other inner class name */
    public class RunnableC0041b implements Runnable {
        public RunnableC0041b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.W.c(1000)) {
                b.this.W.a();
                b.this.e0();
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.Z();
            b.this.V(64, 0);
            b bVar = b.this;
            bVar.V(42, bVar.V);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = false;
            if (b.this.f2160x && SystemProperties.getBoolean("persist.lesc.video.ignore", false)) {
                z2 = true;
            }
            if (z2) {
                return;
            }
            b.this.D();
        }
    }

    public class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1948a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1949b = 0;

        public e() {
        }
    }

    public b(int i2, p1.a aVar, int i3, Handler handler) {
        this(8, i2, aVar, i3, handler);
        this.f1931a0 = SystemProperties.getInt("sys.syu.dvd_external", 0) == 1;
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip2850", "==============================>> 2850 RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        Log.e("Chip2850", "==============================>> 2850 RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
        this.Y = 0;
    }

    @Override // f1.q
    public int E() {
        if (u0.b.f17357r0 != 1) {
            return 2;
        }
        return super.E();
    }

    @Override // f1.q
    public void I(boolean z2) {
        int i2;
        int i3;
        if (this.D) {
            Log.e("Chip2850", "setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2);
        } else {
            Log.e("Chip2850", this + " isSupportReversing:  " + this.D);
        }
        if (!this.D || this.f2160x == z2) {
            return;
        }
        boolean z3 = g.f.g() == 2;
        if (!z3 || this.f2145i != 15) {
            R();
        }
        this.f2160x = z2;
        boolean z4 = z2 && SystemProperties.getBoolean("persist.lesc.video.ignore", false);
        if (SystemClock.elapsedRealtime() > 50000) {
            i2 = z4 ? 0 : 2000;
        } else {
            i2 = ConnectivityManager.CONNECTIVITY_CHANGE_DELAY_DEFAULT;
        }
        this.f2151o = i2;
        if (z2) {
            this.f2162z = SystemClock.elapsedRealtime();
            S();
            return;
        }
        Log.e("Chip2850", "   ==========>>> 003    reversing    :   HandlerMain.backcar(0);  chipid : " + this.f2144h);
        u0.d.C(0);
        if (!z3 || this.f2145i != 15) {
            a();
        }
        if (this.f2161y == 0 && (i3 = u0.b.o4) != 0) {
            this.f2161y = i3;
        }
        Log.e("Chip2850", "EXIT setReadyToReversing:  last readyToReversing  : " + this.f2160x + "    readyToReversing: " + z2 + "   recersingBeforeChannel : " + this.f2161y + " chipid : " + this.f2144h);
        if (this.f2161y != 0) {
            s0.C(20L);
            if (this.f2143g.contains(Integer.valueOf(this.f2161y))) {
                c(this.f2161y);
            }
            Q();
            this.f2161y = 0;
            this.f2162z = 2147483647L;
        }
    }

    @Override // f1.q
    public void J(boolean z2) {
        Log.e("Chip2850", "==============================>> setReseted isReseted : " + z2 + " chipid : " + this.f2144h);
        if (z2) {
            this.f2145i = 0;
            this.f2147k = -1;
            boolean z3 = this.f2153q;
            p();
            if (z3) {
                Q();
            }
        }
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip2850", "==============================>> 2850 setup()  loaded: " + this.f2154r + " chipid : " + this.f2144h);
        if (n()) {
            return true;
        }
        if (!this.f2154r) {
            D();
        }
        return this.f2154r;
    }

    @Override // f1.q
    public void S() {
        Log.e("Chip2850", "   ==========>>>syncReservingk()    loaded : " + this.f2154r + " readyToReversing: " + this.f2160x + " chip id = " + this.f2144h + " imagType: " + this.f2145i + " type : " + this.G);
        if (this.D) {
            if (!this.f2154r) {
                p();
            }
            boolean z2 = g.f.g() == 2;
            boolean z3 = this.f2160x;
            if (z3) {
                if (z2 && this.f2145i == 15) {
                    if (z3) {
                        this.f2150n = false;
                        return;
                    }
                    return;
                }
                if (!m()) {
                    this.f2161y = this.f2145i;
                    Log.e("V2850", "  closeVideo 000");
                    a();
                }
                s0.C(100L);
                c(E());
                Q();
            }
        }
    }

    public void Z() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 20;
        while (true) {
            i2--;
            if (i2 <= 0 || s0.m("sys.fyt.cvbs.iic.busy", -1) != 1) {
                return;
            }
            Log.e("Chip2850", " ===========>>  iic busy   startTime =  " + jElapsedRealtime);
            Log.e("Chip2850", " ===========>>  iic busy   startTime =  " + jElapsedRealtime + "  curr =  " + SystemClock.elapsedRealtime());
            a.i.a0(10L);
        }
    }

    @Override // f1.q, e1.l
    public void a() {
        Log.e("Chip2850", "  closeVideo   imagType:" + this.f2145i + " chipid : " + this.f2144h);
        if (n()) {
            o.g().E(this.f2144h, 0);
            o.g().D(this.f2144h, -1);
            return;
        }
        this.f2155s.removeCallbacks(this.f1940j0);
        int i2 = this.f2145i;
        super.a();
        if (!this.f1931a0 && i2 == 3) {
            s0.C(150L);
            if (this.f1932b0) {
                Log.e("Chip2850", "  closeVideo   ==================================>>>  reset(); chipid : " + this.f2144h);
                D();
            } else if (f0(i2)) {
                this.f2147k = 2;
                b0(2);
            }
        }
        if (i2 != 0) {
            this.f1935e0 = false;
        }
    }

    public void a0() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 20;
        while (true) {
            i2--;
            if (i2 <= 0 || A(64) == 0) {
                return;
            }
            Log.e("Chip2850", " ===========>>  page != 0   startTime =  " + jElapsedRealtime);
            Log.e("Chip2850", " ===========>>  page != 0   startTime =  " + jElapsedRealtime + "  curr =  " + SystemClock.elapsedRealtime());
            a.i.a0(10L);
        }
    }

    public boolean b0(int i2) {
        boolean zQ;
        q.b bVar;
        synchronized (this.f2157u) {
            Log.e("Chip2850", "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f2158v + "  mTypeOrAhd : " + this.f1934d0 + " chipid : " + this.f2144h);
            if (this.f2158v) {
                return false;
            }
            boolean z2 = true;
            this.I = true;
            boolean z3 = this.f1934d0 == 0;
            int i3 = 6;
            if (i2 == 0) {
                Log.e("Chip2850", "flushNtscPal  NOR_CVBS_NTSC");
                zQ = q(f1928v0);
            } else if (i2 == 1) {
                Log.e("Chip2850", "flushNtscPal  NOR_CVBS_PAL");
                zQ = q(f1929w0);
            } else if (i2 == 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("flushNtscPal ");
                sb.append(z3 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("Chip2850", sb.toString());
                zQ = q(z3 ? f1920n0 : f1927u0);
            } else if (i2 == 3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("flushNtscPal ");
                sb2.append(z3 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
                Log.e("Chip2850", sb2.toString());
                zQ = q(z3 ? f1921o0 : f1922p0);
            } else if (i2 == 6) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("flushNtscPal  ");
                sb3.append(z3 ? " AHD_1080P_25FPS" : " TVI_1080P_25FPS");
                Log.e("Chip2850", sb3.toString());
                zQ = q(z3 ? f1924r0 : f1923q0);
            } else if (i2 == 7) {
                Log.e("Chip2850", "flushNtscPal  TVI_1080P_30FPS");
                zQ = q(z3 ? f1926t0 : f1925s0);
            } else if (i2 != 13) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("flushNtscPal ");
                sb4.append(z3 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("Chip2850", sb4.toString());
                zQ = q(z3 ? f1920n0 : f1927u0);
            } else {
                Log.e("Chip2850", "flushNtscPal  NOR_AHD_DVD_NTSC");
                zQ = q(f1930x0);
            }
            if (i2 == 13 || i2 == 0 || i2 == 1) {
                z2 = false;
            }
            this.f1935e0 = z2;
            Log.e("Chip2850", " CHECK SIGNAL  SURE ahd format : " + i2 + "  needCheckAhd : " + this.f1935e0);
            if (!this.f1935e0) {
                i3 = 3;
            }
            this.C = i3;
            Log.e("Chip2850", "flushNtscPal result : " + zQ + " lisenter : " + this.J + " chipid : " + this.f2144h);
            if (zQ && (bVar = this.J) != null) {
                bVar.a(this, i2);
            }
            j0(i2);
            this.I = false;
            return zQ;
        }
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        if (this.f2158v) {
            return;
        }
        if (n() && !m()) {
            T(i2, 1);
            return;
        }
        int i3 = 0;
        int i4 = 2;
        if (this.f2145i != i2 && !m()) {
            super.c(i2);
            int iC0 = c0(i2);
            if (iC0 == 1) {
                i4 = 0;
            } else if (iC0 == 2) {
                i4 = 1;
            } else if (iC0 != 3) {
                i4 = iC0 != 4 ? -1 : 3;
            }
            Log.e("Signal", "   ==========>> openVideo   chipId : " + this.f2144h + " to Channel: " + i2 + " videoPort: " + iC0 + " vChannel :" + i4);
            if (i4 != -1) {
                while (true) {
                    int iV = V(65, i4);
                    s0.C(5L);
                    int iA = A(65);
                    Log.e("Chip2850", "   channel :  " + i2 + "  vChannel :  " + i4 + "  result:" + iA + " chipid : " + this.f2144h + " ret :" + iV + " cnt = " + i3);
                    if (iA != i4) {
                        s0.C(20L);
                    }
                    int i5 = i3 + 1;
                    if (i3 >= 5 || iA == i4) {
                        break;
                        break;
                    }
                    i3 = i5;
                }
                this.f2145i = i2;
                e eVar = this.f1937g0.get(i2, new e());
                int i6 = eVar.f1948a;
                if (i6 != -1 && i6 != this.f2147k) {
                    if (i6 != 13 && i6 != 0 && i6 != 1) {
                        int i7 = this.f1934d0;
                        int i8 = eVar.f1949b;
                        if (i7 != i8) {
                            this.f1934d0 = i8;
                        }
                    }
                    Log.e("Chip2850", "   channel :  " + i2 + " Last imagFormat :  " + i6 + " chipid : " + this.f2144h);
                    b0(i6);
                    this.f2147k = i6;
                    this.C = 3;
                }
            }
            if (m()) {
                this.f2155s.removeCallbacks(this.f1940j0);
                this.f2155s.postDelayed(this.f1940j0, 6000L);
            }
            return;
        }
        u0.d.I3(70, this.f2148l, this.f2146j);
        u0.d.I3(69, this.f2149m, this.f2146j);
        Log.e("Signal", "   ==========>> signalNtscPal   chipId : " + this.f2144h + " videoId: " + this.f2146j + " ntscPal: " + this.f2148l);
        Log.e("Signal", "   ==========>> signalOn   chipId : " + this.f2144h + " videoId: " + this.f2146j + " sSignalOn: " + this.f2149m);
    }

    public int c0(int i2) {
        return this.f2142f.get(i2, 0);
    }

    public boolean d0() {
        if (n()) {
            return true;
        }
        int iA = A(1) & 255;
        boolean z2 = (iA & 112) == 112;
        boolean z3 = (iA & 96) == 96;
        if (z2 || z3) {
            int i2 = this.B;
            if (i2 < this.C) {
                this.B = i2 + 1;
                if (this.f1935e0) {
                    int iL0 = l0((iA >> 2) & 1);
                    if (this.f1934d0 != iL0) {
                        Log.e("Chip2850", " CHECK SIGNAL  SURE old Ahd : " + this.f1934d0 + "  to New AHD: " + iL0 + "  imagType : " + this.f2145i + " chipid : " + this.f2144h);
                        this.f1934d0 = iL0;
                        e eVar = this.f1937g0.get(this.f2145i, new e());
                        eVar.f1949b = this.f1934d0;
                        this.f1937g0.put(this.f2145i, eVar);
                        b0(this.f2147k);
                        this.B = 1;
                        this.C = 3;
                    } else if (z2) {
                        this.C = 3;
                        Log.e("Chip2850", " 111111  CHECK SIGNAL  SURE old Ahd : " + this.f1934d0 + "  to New AHD: " + iL0 + " chipid : " + this.f2144h);
                    } else if (z3) {
                        Log.e("Chip2850", " 222222  CHECK SIGNAL  SURE old Ahd : " + this.f1934d0 + "  to New AHD: " + iL0 + " chipid : " + this.f2144h);
                    }
                } else {
                    this.C = 3;
                    this.B = Math.min(this.B, 3);
                }
            } else if (z3 && !z2) {
                int i3 = this.f2147k;
                this.f1935e0 = (i3 == 13 || i3 == 0 || i3 == 1) ? false : true;
                this.C = this.f1935e0 ? 6 : 3;
                Log.e("Chip2850", " CHECK SIGNAL  SURE  is0x60:" + z3 + " ahd imagFormat : " + this.f2147k + "  needCheckAhd : " + this.f1935e0);
            }
        } else {
            int i4 = this.B;
            if (i4 > 0) {
                if (i4 == this.C) {
                    this.B = 0;
                } else if (i4 > 0) {
                    this.B = i4 - 1;
                }
            }
        }
        if (this.X.c(500)) {
            this.X.a();
            Log.e("Chip2850", "  hasSignal()  SURE : imagType :  " + this.f2145i + " last  imagFormat :  " + this.f2147k + " tmp signalOn : " + this.U + " checkCnt : " + this.B + String.format("    0x01 REG : %03X   0x03 REG : %03X", Integer.valueOf(iA), Integer.valueOf(A(3))) + " chipid : " + this.f2144h);
        }
        return this.B >= this.C;
    }

    public void e0() {
        if (SystemProperties.getInt("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return;
        }
        int iA = A(254);
        int iA2 = A(255);
        Log.e("Chip2850", String.format("    =====     iicerrorcheck   0xFE : %03X,  0xFF : %03X", Integer.valueOf(iA), Integer.valueOf(iA2)));
        if (iA == 40 || iA2 == 80) {
            this.Y = 0;
            return;
        }
        int i2 = this.Y + 1;
        this.Y = i2;
        if (i2 >= 3) {
            D();
        }
    }

    public boolean f0(int i2) {
        return (this.f1933c0 || this.f1931a0 || i2 != 3) ? false : true;
    }

    public void g0(int i2) {
        String str = (i2 == 0 || i2 == 1) ? "1" : "0";
        String str2 = this.f2144h == 1 ? "sys.fyt.cvbs.needdeinterlace" : "sys.fyt.cvbs_2.needdeinterlace";
        if (s0.o(str2, ProxyProperties.LOCAL_EXCL_LIST).equals(str)) {
            return;
        }
        s0.F(str2, str);
        Log.e("Chip2850", "************ ===============needdeinterlace  ntcsPal : " + i2 + " key : " + str2 + "  value: " + str + " chipid : " + this.f2144h);
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        synchronized (this.f2157u) {
            if (!n() && !this.f2158v) {
                this.I = true;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Z();
                a0();
                V(16, i3 & 255);
                Z();
                a0();
                V(17, i5 & 255);
                Z();
                a0();
                V(18, i4 & 255);
                this.I = false;
                Log.e("Chip2850", String.format("brightness = %d  , color = %d, contrast = %d   time = %d", Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), Long.valueOf(SystemClock.elapsedRealtime() - jElapsedRealtime)) + " chipid : " + this.f2144h);
            }
        }
    }

    public int h0() {
        if (n()) {
            return this.f2147k;
        }
        int i2 = 3;
        int iA = A(3) & 7;
        int iA2 = (A(1) >> 2) & 1;
        switch (iA) {
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
                i2 = iA2 != 0 ? 1 : 0;
                break;
            case 7:
            default:
                i2 = -1;
                break;
        }
        return w(i2);
    }

    public final void i0(int i2) {
        boolean z2 = true;
        if (i2 != 0 && i2 != 1) {
            z2 = false;
        }
        q.c cVar = this.f2138b.get(i2);
        if (cVar == null || !cVar.a()) {
            return;
        }
        s0.F(z() + "a.di", ProxyProperties.LOCAL_EXCL_LIST + z2);
    }

    @Override // f1.q
    public void j(int i2) {
        super.j(i2);
        if (i2 == 15 && g.f.g() == 2) {
            this.H = i2;
        }
    }

    public final void j0(int i2) {
        q.c cVar;
        if (g.f.f(13) && (cVar = this.f2138b.get(i2)) != null && cVar.a()) {
            String strZ = z();
            s0.F(strZ + "a.w", cVar.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
            s0.F(strZ + "a.h", cVar.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
            i0(i2);
        }
    }

    @Override // f1.q
    public int k() {
        boolean zD0;
        int iH0;
        Handler handler;
        if (n()) {
            return 1;
        }
        if (!this.f2154r) {
            return 0;
        }
        if (!n() && (handler = this.f2155s) != null) {
            handler.post(this.f1938h0);
        }
        boolean z2 = this.U;
        if (!this.I) {
            boolean zF0 = f0(this.f2145i);
            synchronized (this.f2157u) {
                V(64, 0);
                k0();
                zD0 = !zF0 ? d0() : zF0;
                if (this.U) {
                    iH0 = zF0 ? 13 : h0();
                } else {
                    iH0 = -1;
                }
            }
            if (this.U) {
                g0(iH0);
                if (iH0 != -1 && this.f2147k != iH0) {
                    this.f2147k = iH0;
                    if (this.f2145i != 0) {
                        Log.e("Chip2850", " record  channel :  " + this.f2145i + " TO  imagFormat :  " + this.f2147k + " chipid : " + this.f2144h);
                        e eVar = this.f1937g0.get(this.f2145i, new e());
                        eVar.f1948a = this.f2147k;
                        this.f1937g0.put(this.f2145i, eVar);
                    }
                    Log.e("Chip2850", "  CHECK SIGNAL  SURE : imagType :  " + this.f2145i + " last     imagFormat :  " + this.f2147k + "   imagFormat:" + iH0 + " signalOn : " + this.U + "     hasSignal  : " + zD0 + " chipid : " + this.f2144h);
                    b0(iH0);
                }
            }
            z2 = zD0;
        }
        int i2 = (this.f1934d0 == -1 || !z2) ? 0 : 1;
        if (m() && i2 != 0) {
            this.f2155s.removeCallbacks(this.f1940j0);
        }
        return i2;
    }

    public boolean k0() {
        if (s0.m("sys.fyt.cvbs.iic.busy", -1) == 1) {
            return this.U;
        }
        if (n() || f0(this.f2145i)) {
            this.U = true;
            return true;
        }
        int iA = A(1);
        boolean z2 = ((iA >> 7) & 1) == 0;
        if (this.U != z2) {
            this.U = z2;
            this.V = z2 ? 48 : 56;
            this.f1939i0.run();
            Log.e("Chip2850", "signalOn    =   " + this.U + String.format("    0x01 REG : %03X", Integer.valueOf(iA)) + "  imagType  = " + this.f2145i + "  imagFormat :  " + this.f2147k + "    hasSingnal:  " + z2 + " chipid : " + this.f2144h);
        }
        return this.U;
    }

    public int l0(int i2) {
        if (this.f2147k == i2) {
            this.f1942l0 = 0;
            return i2;
        }
        if (i2 != this.f1942l0) {
            this.f1941k0 = 1;
            this.f1942l0 = i2;
            return this.f1934d0;
        }
        int i3 = this.f1941k0 + 1;
        this.f1941k0 = i3;
        if (i3 < 3) {
            return this.f1934d0;
        }
        this.f1941k0 = 0;
        return i2;
    }

    @Override // f1.q
    public void o() {
        G(0, 0);
        G(1, 1);
        G(2, 2);
        G(3, 4);
        G(4, 3);
        G(5, 2);
        G(6, 2);
        G(7, 3);
        G(8, 2);
        G(9, 1);
    }

    @Override // f1.q
    public void p() {
        if (n()) {
            return;
        }
        R();
        this.f2147k = 2;
        Log.e("Chip2850", "==============================>> flushParams : chipid : " + this.f2144h);
        Log.e("Chip2850", " ========>>  flushParams last   imagFormat =  " + this.f2147k + " chipid : " + this.f2144h);
        synchronized (this.f2157u) {
            if (!n()) {
                this.I = true;
                V(64, 8);
                V(16, 136);
                s0.C(20L);
                V(16, 8);
                V(64, 0);
                this.I = false;
            }
        }
        H(b0(this.f2147k));
        synchronized (this.f2157u) {
            if (!n()) {
                this.I = true;
                V(64, 8);
                V(16, 136);
                s0.C(20L);
                V(16, 8);
                V(64, 0);
                this.I = false;
            }
        }
        Log.e("Chip2850", " ========>>  flushParams last   imagFormat =  " + this.f2147k + " loaded:" + this.f2154r + " chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("Chip2850", "flushParams =============>> i2cInvalid : " + this.f2158v + "  Chip id : " + this.f2144h);
        if (this.f2158v) {
            return false;
        }
        Z();
        int i2 = -1;
        int length = iArr.length / 2;
        Log.e("Chip2850", "flushParams  START  data  length = " + iArr.length);
        boolean z2 = true;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = i3 * 2;
            int i5 = iArr[i4];
            int i6 = iArr[i4 + 1];
            if (i5 == 64) {
                i2 = i6;
            }
            if (i2 != 0 || (i5 != 16 && i5 != 18 && i5 != 17 && i5 != 65)) {
                int iV = V(i5, i6);
                boolean z3 = iV >= 0;
                Log.e("Chip2850", String.format("[ %02X,  %02X]", Integer.valueOf(i5), Integer.valueOf(i6)) + "  result : " + z3 + " ret : " + iV + " chipid : " + this.f2144h);
                z2 = z3;
            }
            if (!z2) {
                break;
            }
        }
        Log.e("Chip2850", "flushParams  END  data  length = " + iArr.length + " result:" + z2 + " chipid : " + this.f2144h);
        return z2;
    }

    public b(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        super(i2, i3, aVar, i4, handler);
        this.P = 64;
        this.Q = 65;
        this.R = 16;
        this.S = 18;
        this.T = 17;
        this.U = false;
        this.V = 48;
        this.W = new l0();
        this.X = new l0();
        this.Y = 0;
        this.Z = false;
        this.f1931a0 = false;
        this.f1932b0 = false;
        this.f1933c0 = false;
        this.f1934d0 = 0;
        this.f1935e0 = false;
        this.f1936f0 = new a();
        this.f1937g0 = new SparseArray<>();
        this.f1938h0 = new RunnableC0041b();
        this.f1939i0 = new c();
        this.f1940j0 = new d();
        this.f1941k0 = 0;
        this.f1942l0 = -1;
        this.f1943m0 = 0;
    }
}
