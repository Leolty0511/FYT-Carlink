package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.net.wifi.BatchedScanSettings;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class f8 extends lt {
    public static int V;
    public static int W;
    public static int X;
    public static int Y;
    public static int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static int f5097a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static int f5098b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static int f5099c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static int f5100d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static int f5101e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static int f5102f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static int f5103g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static int f5104h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static int f5105i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static int f5106j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static int f5107k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static int f5108l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static int f5109m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static int f5110n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static int f5111o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static int f5112p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static int f5113q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static int f5114r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static int f5115s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static int f5116t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static int f5117u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static int f5118v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static int f5119w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static int f5120x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static int f5121y0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5123c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5125e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5122b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5126f = 255;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f5127g = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 34}, new int[]{14, 35}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 3}, new int[]{18, 4}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 6}, new int[]{135, 21}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 32}, new int[]{152, 33}, new int[]{153, 3}, new int[]{154, 4}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 29}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 54}, new int[]{174, 1}, new int[]{175, 5}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5128h = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 1}, new int[]{135, 4}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, -1}, new int[]{152, -1}, new int[]{153, 71}, new int[]{154, 72}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 25}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 26}, new int[]{174, 21}, new int[]{175, 3}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 13}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f5129i = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 6}, new int[]{135, 5}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 32}, new int[]{152, 33}, new int[]{153, 3}, new int[]{154, 4}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 29}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 54}, new int[]{174, 1}, new int[]{175, 21}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f5130j = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, -1}, new int[]{135, 25}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 4}, new int[]{152, 3}, new int[]{153, 67}, new int[]{154, 68}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 2}, new int[]{171, -1}, new int[]{172, 12}, new int[]{173, 1}, new int[]{174, 21}, new int[]{175, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 18}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[][] f5131k = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 6}, new int[]{135, 5}, new int[]{136, -1}, new int[]{137, 39}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 32}, new int[]{152, 33}, new int[]{153, 3}, new int[]{154, 4}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 29}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 54}, new int[]{174, 1}, new int[]{175, 21}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int[][] f5132l = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 6}, new int[]{135, 54}, new int[]{136, -1}, new int[]{137, 55}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 32}, new int[]{152, 33}, new int[]{153, 3}, new int[]{154, 4}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 29}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 18}, new int[]{174, 1}, new int[]{175, 24}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[][] f5133m = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 18}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, -1}, new int[]{135, -1}, new int[]{136, -1}, new int[]{137, -1}, new int[]{138, -1}, new int[]{139, -1}, new int[]{140, -1}, new int[]{141, -1}, new int[]{142, -1}, new int[]{143, -1}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, -1}, new int[]{152, -1}, new int[]{153, 67}, new int[]{154, 68}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, -1}, new int[]{171, -1}, new int[]{172, -1}, new int[]{173, -1}, new int[]{174, -1}, new int[]{175, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int[][] f5134n = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, -1}, new int[]{135, 21}, new int[]{136, 2}, new int[]{137, 54}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, 5}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 63}, new int[]{168, 39}, new int[]{169, 1}, new int[]{170, -1}, new int[]{171, 18}, new int[]{172, -1}, new int[]{173, -1}, new int[]{174, 1}, new int[]{175, 24}, new int[]{177, 54}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 13}};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[][] f5135o = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, -1}, new int[]{135, 25}, new int[]{136, 2}, new int[]{137, 54}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, 21}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 63}, new int[]{168, 39}, new int[]{169, 1}, new int[]{170, 24}, new int[]{171, 18}, new int[]{172, -1}, new int[]{173, 26}, new int[]{174, 55}, new int[]{175, 5}, new int[]{177, 54}, new int[]{178, 25}, new int[]{179, 1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[][] f5136p = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, 6}, new int[]{135, 5}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, 11}, new int[]{150, -1}, new int[]{151, 3}, new int[]{152, 4}, new int[]{153, 32}, new int[]{154, 33}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, -1}, new int[]{170, 16}, new int[]{171, 18}, new int[]{172, 2}, new int[]{173, 54}, new int[]{174, 1}, new int[]{175, 21}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[][] f5137q = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 25}, new int[]{134, -1}, new int[]{135, -1}, new int[]{136, -1}, new int[]{137, -1}, new int[]{138, -1}, new int[]{139, -1}, new int[]{140, -1}, new int[]{141, -1}, new int[]{142, -1}, new int[]{143, -1}, new int[]{145, -1}, new int[]{150, -1}, new int[]{151, -1}, new int[]{152, -1}, new int[]{153, 67}, new int[]{154, 68}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, 12}, new int[]{170, -1}, new int[]{171, 18}, new int[]{172, 5}, new int[]{173, 54}, new int[]{174, 55}, new int[]{175, -1}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, 1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[][] f5138r = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 33}, new int[]{9, 32}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 0}, new int[]{134, -1}, new int[]{135, 25}, new int[]{136, -1}, new int[]{137, -1}, new int[]{138, -1}, new int[]{139, -1}, new int[]{140, -1}, new int[]{141, -1}, new int[]{142, -1}, new int[]{143, -1}, new int[]{145, -1}, new int[]{150, -1}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 32}, new int[]{154, 33}, new int[]{164, 29}, new int[]{165, 6}, new int[]{167, 63}, new int[]{168, 62}, new int[]{169, 12}, new int[]{170, -1}, new int[]{171, 18}, new int[]{172, 5}, new int[]{173, 54}, new int[]{174, 55}, new int[]{175, -1}, new int[]{177, 54}, new int[]{178, -1}, new int[]{179, 1}, new int[]{192, 63}};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[][] f5139s = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 26}, new int[]{7, 5}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{13, 3}, new int[]{14, 4}, new int[]{15, 29}, new int[]{16, 6}, new int[]{17, 4}, new int[]{18, 3}, new int[]{19, 1}, new int[]{20, -1}, new int[]{21, -1}, new int[]{22, -1}, new int[]{64, 13}, new int[]{129, 12}, new int[]{134, 58}, new int[]{135, 68}, new int[]{136, -1}, new int[]{137, 12}, new int[]{138, 40}, new int[]{139, 41}, new int[]{140, 42}, new int[]{141, 43}, new int[]{142, 44}, new int[]{143, 45}, new int[]{145, -1}, new int[]{150, -1}, new int[]{151, 34}, new int[]{152, 35}, new int[]{153, 72}, new int[]{154, 71}, new int[]{164, -1}, new int[]{165, -1}, new int[]{167, -1}, new int[]{168, 25}, new int[]{169, -1}, new int[]{170, -1}, new int[]{171, -1}, new int[]{172, 2}, new int[]{173, 13}, new int[]{174, 21}, new int[]{175, 67}, new int[]{177, -1}, new int[]{178, -1}, new int[]{179, -1}, new int[]{192, -1}};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public o1.g0 f5140t = new o1.g0(getClass().getSimpleName(), 32);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f5141u = 1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f5142v = 2;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f5143w = 3;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f5144x = 4;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f5145y = 5;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f5146z = 6;
    public final int A = 7;
    public final int B = 8;
    public final int C = 9;
    public final int D = 10;
    public final int E = 11;
    public final int F = 12;
    public final int G = 13;
    public int H = 0;
    public int I = 0;
    public int J = 0;
    public int K = 255;
    public int L = 255;
    public Runnable M = new a();
    public Runnable N = new b();
    public Runnable O = new c();
    public Runnable P = new d();
    public Runnable Q = new e();
    public int R = 0;
    public int S = 0;
    public Runnable T = new f();
    public Runnable U = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f8.this.f3();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f8.this.v3((byte) -28, u0.b.i3);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f8 f8Var = f8.this;
            int i2 = f8Var.f5122b;
            if (i2 > 0) {
                f8Var.f5122b = i2 - 1;
            }
            if (f8Var.f5122b == 0) {
                f8.e3();
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f8.i3();
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 10, -53, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0, 0, 0, 0, 0);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(f8.this.U);
            f8 f8Var = f8.this;
            f8Var.S = 5;
            f8Var.I = 0;
            f8Var.J = 0;
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f8 f8Var = f8.this;
            int i2 = f8Var.S - 1;
            f8Var.S = i2;
            if (i2 <= 0) {
                l0.b0.p0(f8Var.U);
                f8.this.S = 5;
            }
            if (u0.b.f17306a0 == 1) {
                f8Var.a3(f8Var.f5140t.b(2, 1));
                f8 f8Var2 = f8.this;
                f8Var2.m3(f8Var2.f5140t.b(3, 1));
                f8 f8Var3 = f8.this;
                f8Var3.n3(f8Var3.f5140t.b(4, 1));
                f8 f8Var4 = f8.this;
                f8Var4.o3(f8Var4.f5140t.b(13, 0));
                switch (nt.f8633a) {
                    case 721148:
                    case 1704188:
                        z.k.s(227, 2, 36, 20, 0);
                        break;
                    case 786684:
                        z.k.s(227, 2, 36, 21, 0);
                        break;
                    case 852220:
                        z.k.s(227, 2, 36, 22, 0);
                        break;
                    case 917756:
                        z.k.s(227, 2, 36, 23, 0);
                        break;
                    case 983292:
                        z.k.s(227, 2, 36, 24, 0);
                        break;
                    case 1048828:
                        z.k.s(227, 2, 36, 25, 0);
                        break;
                    case 1114364:
                        z.k.s(227, 2, 36, 32, 0);
                        break;
                    case 1179900:
                        z.k.s(227, 2, 36, 33, 0);
                        break;
                    case 1245436:
                        z.k.s(227, 2, 36, 34, 0);
                        break;
                    case 1310972:
                        z.k.s(227, 2, 36, 36, 0);
                        break;
                    case 1376508:
                        z.k.s(227, 2, 36, 38, 0);
                        break;
                    case 1442044:
                        z.k.s(227, 2, 36, 37, 0);
                        break;
                    case 1507580:
                        z.k.s(227, 2, 36, 39, 0);
                        break;
                    case 1573116:
                        z.k.s(227, 2, 36, 40, 0);
                        break;
                    case 1638652:
                        z.k.s(227, 2, 36, 40, 0);
                        break;
                    case 1769724:
                        z.k.s(227, 2, 36, 41, 0);
                        break;
                    case 1835260:
                        z.k.s(227, 2, 36, 42, 0);
                        break;
                    case 1900796:
                    case 1966332:
                    case 2031868:
                    case 2097404:
                    case 2162940:
                    case 2228476:
                    case 3932412:
                    case 3997948:
                    case 4063484:
                        z.k.s(227, 2, 36, 35, 0);
                        break;
                    case 2294012:
                        z.k.s(227, 2, 36, 11, 0);
                        break;
                    case 2359548:
                        z.k.s(227, 2, 36, 64, 0);
                        break;
                    case 2425084:
                        z.k.s(227, 2, 36, 6, 0);
                        break;
                    case 2490620:
                        z.k.s(227, 2, 36, 16, 0);
                        break;
                    case 2556156:
                        z.k.s(227, 2, 36, 7, 0);
                        break;
                    case 2621692:
                        z.k.s(227, 2, 36, 16, 0);
                        break;
                    case 2687228:
                        z.k.s(227, 2, 36, 64, 0);
                        break;
                    case 2752764:
                        z.k.s(227, 2, 36, 20, 0);
                        break;
                    case 2818300:
                        z.k.s(227, 2, 36, 8, 0);
                        break;
                    case 2883836:
                        z.k.s(227, 2, 36, 16, 0);
                        break;
                    case 2949372:
                        z.k.s(227, 2, 36, 9, 0);
                        break;
                    case 3014908:
                        z.k.s(227, 2, 36, 10, 0);
                        break;
                    case 3080444:
                        z.k.s(227, 2, 36, 20, 0);
                        break;
                    case 3145980:
                        z.k.s(227, 2, 36, 43, 0);
                        break;
                    case 3211516:
                        z.k.s(227, 2, 36, 44, 0);
                        break;
                    case 3277052:
                        z.k.s(227, 2, 36, 45, 0);
                        break;
                    case 3342588:
                        z.k.s(227, 2, 36, 46, 0);
                        break;
                    case 3408124:
                        z.k.s(227, 2, 36, 64, 0);
                        break;
                    case 3473660:
                        z.k.s(227, 2, 36, 40, 0);
                        break;
                    case 3539196:
                        z.k.s(227, 2, 36, 47, 0);
                        break;
                    case 3604732:
                        z.k.s(227, 2, 36, 48, 0);
                        break;
                    case 3670268:
                        z.k.s(227, 2, 36, 64, 0);
                        break;
                    case 3735804:
                        z.k.s(227, 2, 36, 49, 0);
                        break;
                    case 3801340:
                        z.k.s(227, 2, 36, 51, 0);
                        break;
                    case 3866876:
                        z.k.s(227, 2, 36, 52, 0);
                        break;
                    case 4129020:
                        z.k.s(227, 2, 36, 53, 0);
                        break;
                    case 4194556:
                        z.k.s(227, 2, 36, 53, 0);
                        break;
                    default:
                        f8 f8Var5 = f8.this;
                        f8Var5.H = f8Var5.f5140t.b(1, 0);
                        f8 f8Var6 = f8.this;
                        f8Var6.t3(36, f8Var6.f5140t.b(1, 0), 0);
                        break;
                }
            }
        }
    }

    public static void b3() {
        int[] iArr = new int[13];
        int i2 = 0;
        for (int i3 = 0; i3 < 13; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 11;
        iArr[1] = 164;
        iArr[2] = 15;
        if (o0.e.f16778h != 0) {
            iArr[3] = 64;
        } else {
            iArr[3] = 0;
        }
        iArr[4] = 64;
        iArr[5] = u0.b.r3 & 255;
        iArr[6] = 0;
        int i4 = u0.b.t3;
        iArr[7] = i4 / 60;
        iArr[8] = i4 % 60;
        iArr[9] = 32;
        iArr[10] = 32;
        iArr[11] = u0.b.r3 & 255;
        iArr[12] = 0;
        int[] iArr2 = new int[14];
        iArr2[0] = 227;
        while (i2 < 13) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static void c3() {
        int[] iArr = new int[8];
        int i2 = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 6;
        iArr[1] = 162;
        int i4 = w0.d.f17796h;
        if (i4 - 65536 == 0) {
            iArr[2] = 1;
        } else if (1 == i4 - 65536 || 2 == i4 - 65536) {
            iArr[2] = 2;
        } else {
            iArr[2] = 4;
        }
        int i5 = w0.d.f17797i;
        iArr[3] = i5 & 255;
        iArr[4] = (i5 >> 8) & 255;
        int i6 = w0.d.f17798j;
        if (i6 % 6 != 0 || i6 == 0) {
            iArr[5] = (i6 & 255) % 6;
        } else {
            iArr[5] = 6;
        }
        iArr[6] = 0;
        iArr[7] = 0;
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i7 = i2 + 1;
            iArr2[i7] = (byte) iArr[i2];
            i2 = i7;
        }
        z.k.s(iArr2);
    }

    public static int d3() {
        return u0.b.f17306a0 == 1 ? 128 : 0;
    }

    public static void e3() {
        k3();
        int i2 = u0.b.D;
        if (i2 == 1) {
            c3();
        } else {
            if (i2 != 4) {
                return;
            }
            b3();
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002c  */
    /* JADX WARN: Code duplicated, block: B:27:0x003c  */
    /* JADX WARN: Code duplicated, block: B:28:0x003e  */
    public static int g3() {
        int i2 = 3;
        switch (u0.b.D) {
            case 0:
            case 3:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
                i2 = 5;
                break;
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 - 65536 == 0) {
                    i2 = 1;
                } else if (1 == i3 - 65536) {
                    i2 = 2;
                } else if (2 != i3 - 65536) {
                    if (i3 + 0 == 0) {
                        i2 = 4;
                    } else if (1 != i3 - 0) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                }
                break;
            case 2:
                i2 = 10;
                break;
            case 4:
                int i4 = o0.e.H;
                if (i4 == 1) {
                    i2 = 7;
                } else if (i4 == 2) {
                    i2 = 14;
                } else if (i4 != 3) {
                    i2 = 2;
                } else {
                    i2 = 13;
                }
                break;
            case 9:
            default:
                i2 = 0;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 5;
        }
        return i2;
    }

    public static void i3() {
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 3;
        iArr[1] = 161;
        iArr[2] = d3();
        iArr[3] = g3();
        int i4 = y0.f.C0;
        iArr[4] = i4;
        if (i4 > 30) {
            iArr[4] = 30;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i2 < 5) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public static void k3() {
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < 5; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 3;
        iArr[1] = 161;
        iArr[2] = d3();
        iArr[3] = g3();
        int i4 = y0.f.C0;
        iArr[4] = i4;
        if (i4 > 30) {
            iArr[4] = 30;
        }
        int[] iArr2 = new int[6];
        iArr2[0] = 227;
        while (i2 < 5) {
            int i5 = i2 + 1;
            iArr2[i5] = (byte) iArr[i2];
            i2 = i5;
        }
        z.k.s(iArr2);
    }

    public final void A3(int i2, int i3, int i4, int i5) {
        z.k.s(227, 2, -83, (byte) i5, (byte) i2);
        qt.y0(i4, i2);
        if (this.f5140t.b(i3, 0) != i2) {
            this.f5140t.g(i3, i2);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        this.f5140t.a();
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        mtVar.f8320o = 0;
        mtVar.f8308c = 0;
        mtVar.f8309d = 0;
        if (App.c().getResources().getConfiguration().orientation == 1) {
            this.f7886a.f8314i = 0;
        }
        qt.z(this.Q);
        switch (nt.f8633a) {
            case 1114364:
                qt.z(this.M);
                u0.c.f17388o.a(this.N, 1);
                break;
            case 1179900:
                qt.z(this.O);
                y0.g.f18094d.a(this.P, 1);
                y0.g.f18095e.a(this.P, 1);
                w0.e.f17815a.a(this.O, 1);
                w0.e.f17819e.a(this.O, 1);
                break;
            case 1638652:
            case 2359548:
            case 2687228:
            case 3408124:
            case 3670268:
            case 3866876:
                mt mtVar2 = this.f7886a;
                mtVar2.f8306a = null;
                mtVar2.f8311f = 0;
                mtVar2.f8312g = 0;
                mtVar2.f8314i = 0;
                break;
            default:
                this.H = this.f5140t.b(1, 0);
                qt.z(this.O);
                y0.g.f18094d.a(this.P, 1);
                y0.g.f18095e.a(this.P, 1);
                w0.e.f17815a.a(this.O, 1);
                w0.e.f17819e.a(this.O, 1);
                break;
        }
        u0.c.f17386m.a(this.T, 1);
        if (nt.f8633a == 786684) {
            A3(this.f5140t.b(7, 1), 7, 202, 11);
            A3(this.f5140t.b(8, 1), 8, 203, 12);
            A3(this.f5140t.b(9, 1), 9, 204, 13);
            A3(this.f5140t.b(10, 1), 10, 205, 14);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr;
        int[][] iArr2;
        int[][] iArr3;
        int[][] iArr4;
        int[][] iArr5;
        int[][] iArr6;
        int[][] iArr7;
        int[][] iArr8;
        int[][] iArr9;
        int[][] iArr10;
        int[][] iArr11;
        int[][] iArr12;
        int[][] iArr13;
        int[][] iArr14;
        int i10;
        int[][] iArr15;
        int i11;
        byte b2 = bArr[i2 + 1];
        if (b2 == -123) {
            int i12 = bArr[i2 + 2] & 255;
            int i13 = bArr[i2 + 3] & 255;
            qt.y0(166, (i12 >> 7) & 1);
            qt.y0(167, (i13 >> 7) & 1);
            return;
        }
        if (b2 == -105) {
            qt.y0(218, (bArr[i2 + 2] >> 0) & 15);
            int i14 = i2 + 3;
            qt.y0(219, (bArr[i14] >> 5) & 1);
            qt.y0(220, (bArr[i14] >> 4) & 1);
            qt.y0(221, (bArr[i14] >> 3) & 1);
            qt.y0(222, (bArr[i14] >> 2) & 1);
            qt.y0(223, (bArr[i14] >> 1) & 1);
            qt.y0(224, (bArr[i14] >> 0) & 1);
            int i15 = i2 + 4;
            qt.y0(225, (bArr[i15] >> 5) & 1);
            qt.y0(226, (bArr[i15] >> 4) & 1);
            qt.y0(227, (bArr[i15] >> 3) & 1);
            qt.y0(228, (bArr[i15] >> 2) & 1);
            qt.y0(229, (bArr[i15] >> 1) & 1);
            qt.y0(230, (bArr[i15] >> 0) & 1);
            qt.y0(231, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(232, bArr[i2 + 7] & 255);
            qt.y0(233, bArr[i2 + 8] & 255);
            int i16 = i2 + 9;
            qt.y0(234, (bArr[i16] >> 7) & 1);
            qt.y0(235, (bArr[i16] >> 6) & 1);
            qt.y0(236, (bArr[i16] >> 5) & 1);
            qt.y0(237, (bArr[i16] >> 4) & 1);
            qt.y0(238, (bArr[i16] >> 3) & 1);
            qt.y0(239, (bArr[i16] >> 2) & 1);
            qt.y0(240, bArr[i2 + 10] & 255);
            qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i2 + 11] & 255) | ((bArr[i2 + 12] << 8) & 65280));
            return;
        }
        if (b2 == -63) {
            int i17 = bArr[i2 + 2] & 255;
            qt.y0(169, (i17 >> 5) & 1);
            qt.y0(170, (i17 >> 3) & 1);
            int i18 = bArr[i2 + 3] & 255;
            if ((i18 & 32) == 0) {
                qt.y0(171, 2);
            } else {
                qt.y0(171, 1);
            }
            int i19 = (i18 >> 1) & 3;
            if (i19 == 0) {
                qt.y0(172, 1);
                return;
            } else if (i19 == 1) {
                qt.y0(172, 2);
                return;
            } else {
                qt.y0(172, 3);
                return;
            }
        }
        if (b2 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 26) {
            qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
            return;
        }
        if (b2 == 49) {
            int i20 = bArr[i2 + 2] & 255;
            qt.y0(10, (i20 >> 6) & 1);
            qt.y0(53, (i20 >> 5) & 1);
            qt.y0(42, (i20 >> 4) & 1);
            qt.y0(13, (i20 >> 3) & 1);
            qt.y0(55, (i20 >> 2) & 1);
            qt.y0(11, (i20 >> 0) & 1);
            int i21 = bArr[i2 + 3] & 255;
            qt.y0(12, (i21 >> 4) & 1);
            qt.y0(54, (i21 >> 3) & 1);
            int i22 = bArr[i2 + 4] & 255;
            qt.y0(16, (i22 >> 5) & 1);
            qt.y0(65, (i22 >> 4) & 1);
            qt.y0(51, bArr[i2 + 5] & 255 & 3);
            int i23 = i2 + 6;
            int i24 = bArr[i23] & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i24 == 3) {
                i4 = 0;
                i5 = 0;
                i6 = 1;
            } else if (i24 == 5) {
                i5 = 0;
                i4 = 1;
                i6 = 1;
            } else if (i24 != 6) {
                switch (i24) {
                    case 11:
                        i4 = 0;
                        i6 = 0;
                        i5 = 1;
                        break;
                    case 12:
                        i4 = 0;
                        i6 = 1;
                        i5 = i6;
                        break;
                    case 13:
                        i6 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 14:
                        i4 = 1;
                        i6 = i4;
                        i5 = i6;
                        break;
                    default:
                        i4 = 0;
                        i6 = i4;
                        i5 = i6;
                        break;
                }
            } else {
                i6 = 0;
                i5 = 0;
                i4 = 1;
            }
            qt.y0(19, i4);
            qt.y0(20, i6);
            qt.y0(18, i5);
            int i25 = (bArr[i23] >> 4) & 15;
            if (i25 == 3) {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            } else if (i25 == 5) {
                i8 = 0;
                i7 = 1;
                i9 = 1;
            } else if (i25 != 6) {
                switch (i25) {
                    case 11:
                        i7 = 0;
                        i9 = 0;
                        i8 = 1;
                        break;
                    case 12:
                        i7 = 0;
                        i9 = 1;
                        i8 = i9;
                        break;
                    case 13:
                        i9 = 0;
                        i7 = 1;
                        i8 = 1;
                        break;
                    case 14:
                        i7 = 1;
                        i9 = i7;
                        i8 = i9;
                        break;
                    default:
                        i7 = 0;
                        i9 = i7;
                        i8 = i9;
                        break;
                }
            } else {
                i9 = 0;
                i8 = 0;
                i7 = 1;
            }
            qt.y0(23, i7);
            qt.y0(24, i9);
            qt.y0(22, i8);
            qt.y0(21, bArr[i2 + 7] & 255);
            int i26 = i2 + 8;
            int i27 = bArr[i26] & 255;
            int i28 = i2 + 9;
            int i29 = bArr[i28] & 255;
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                i27 = bArr[i28] & 255;
                i29 = bArr[i26] & 255;
            }
            if (i27 == 254) {
                qt.y0(27, -2);
            } else if (i27 == 255) {
                qt.y0(27, -3);
            } else {
                int i30 = i27 * 5;
                if (i30 <= 200 || i30 >= 260) {
                    qt.y0(27, (i30 / 10) * 10);
                } else {
                    qt.y0(27, (i30 / 5) * 5);
                }
            }
            if (i29 == 254) {
                qt.y0(28, -2);
            } else if (i29 == 255) {
                qt.y0(28, -3);
            } else {
                int i31 = i29 * 5;
                if (i31 <= 200 || i31 >= 260) {
                    qt.y0(28, (i31 / 10) * 10);
                } else {
                    qt.y0(28, (i31 / 5) * 5);
                }
            }
            if (nt.a()) {
                l0.h0.u(bArr[i2 + 13] & 255);
                return;
            }
            return;
        }
        if (b2 == 118) {
            int i32 = bArr[i2 + 2] & 255;
            qt.y0(122, (i32 >> 7) & 1);
            qt.y0(123, (i32 >> 6) & 1);
            qt.y0(124, (i32 >> 4) & 3);
            qt.y0(125, (i32 >> 3) & 1);
            qt.y0(126, (i32 >> 0) & 7);
            int i33 = bArr[i2 + 3] & 255;
            qt.y0(127, (i33 >> 7) & 1);
            qt.y0(128, (i33 >> 6) & 1);
            qt.y0(129, (i33 >> 5) & 1);
            qt.y0(130, (i33 >> 4) & 1);
            qt.y0(131, (i33 >> 3) & 1);
            qt.y0(132, (i33 >> 2) & 1);
            qt.y0(133, (i33 >> 0) & 3);
            return;
        }
        if (b2 == 121) {
            int i34 = bArr[i2 + 2] & 255;
            int i35 = bArr[i2 + 3] & 255;
            int i36 = bArr[i2 + 4] & 255;
            qt.y0(134, (i34 >> 7) & 1);
            qt.y0(135, (i34 >> 6) & 1);
            qt.y0(136, (i34 >> 5) & 1);
            qt.y0(137, (i34 >> 4) & 1);
            qt.y0(186, (i34 >> 3) & 1);
            qt.y0(187, (i34 >> 2) & 1);
            qt.y0(188, (i34 >> 1) & 1);
            qt.y0(189, i34 & 1);
            qt.y0(190, (i35 >> 6) & 3);
            qt.y0(191, (i35 >> 5) & 1);
            qt.y0(192, (i35 >> 3) & 3);
            qt.y0(193, (i35 >> 1) & 3);
            qt.y0(185, (i36 >> 6) & 3);
            qt.y0(197, (i36 >> 2) & 15);
            qt.y0(208, (i36 >> 1) & 1);
            qt.y0(209, (i36 >> 0) & 1);
            int i37 = i2 + 5;
            qt.y0(210, (bArr[i37] >> 6) & 3);
            qt.y0(211, (bArr[i37] >> 5) & 1);
            qt.y0(212, (bArr[i37] >> 4) & 1);
            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i37] >> 3) & 1);
            qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i37] >> 2) & 1);
            qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i37] >> 1) & 1);
            qt.y0(i.a.Theme_preferencePanelStyle, (bArr[i37] >> 0) & 1);
            int i38 = i2 + 6;
            qt.y0(i.a.Theme_preferenceHeaderPanelStyle, (bArr[i38] >> 3) & 7);
            qt.y0(248, 7 & (bArr[i38] >> 0));
            int i39 = i2 + 7;
            qt.y0(249, (bArr[i39] >> 6) & 3);
            qt.y0(250, (bArr[i39] >> 4) & 3);
            qt.y0(251, (bArr[i39] >> 2) & 3);
            qt.y0(252, (bArr[i39] >> 1) & 1);
            qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i39] >> 0) & 1);
            int i40 = i2 + 8;
            qt.y0(256, (bArr[i40] >> 4) & 1);
            qt.y0(257, (bArr[i40] >> 3) & 1);
            qt.y0(254, 3 & (bArr[i40] >> 1));
            qt.y0(255, (bArr[i40] >> 0) & 1);
            return;
        }
        if (b2 == -109) {
            int i41 = i2 + 2;
            qt.y0(213, (bArr[i41] >> 7) & 1);
            qt.y0(214, (bArr[i41] >> 6) & 1);
            qt.y0(215, (bArr[i41] >> 5) & 1);
            int i42 = i2 + 3;
            qt.y0(216, bArr[i42] & 255);
            qt.y0(217, bArr[i2 + 4] & 255);
            if (this.R != (bArr[i42] & 255)) {
                int i43 = bArr[i42] & 255;
                this.R = i43;
                if (i43 == 2 || i43 == 5) {
                    x3();
                    return;
                } else {
                    if (i43 == 2) {
                        l0.b0.l0(54, 0);
                        l0.b0.l0(54, 1);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == -108) {
            qt.y0(168, bArr[i2 + 2] & 255);
            return;
        }
        if (b2 != 33) {
            if (b2 == 34) {
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    if (b3 == 1) {
                        int i44 = this.I;
                        if (b4 != i44) {
                            if (b4 > i44) {
                                for (int i45 = 0; i45 < b4 - this.I; i45++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                            } else if (b4 < i44) {
                                for (int i46 = 0; i46 < this.I - b4; i46++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            this.I = b4;
                            return;
                        }
                        return;
                    }
                    if ((b3 == 2 || b3 == 3 || b3 == 4 || b3 == 5) && b4 != (i10 = this.J)) {
                        if (b4 > i10) {
                            for (int i47 = 0; i47 < b4 - this.J; i47++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b4 < i10) {
                            for (int i48 = 0; i48 < this.J - b4; i48++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.J = b4;
                        return;
                    }
                    return;
                }
                return;
            }
            if (b2 == 65) {
                if (nt.a()) {
                    u0.d.R2(l0.h0.o(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.h0.o(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.h0.o(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.h0.o(bArr[i2 + 5] & 255));
                    int i49 = i2 + 6;
                    int i50 = bArr[i49] & 255;
                    int i51 = i2 + 7;
                    int i52 = bArr[i51] & 255;
                    int i53 = i2 + 8;
                    int i54 = bArr[i53] & 255;
                    int i55 = i2 + 9;
                    int i56 = bArr[i55] & 255;
                    if (i50 >= 7 && i52 >= 7 && i54 >= 7 && i56 >= 7) {
                        u0.d.C2(0);
                    } else if ((l0.c0.f13013g != i50 || l0.c0.f13014h != i52 || l0.c0.f13015i != i54 || l0.c0.f13016j != i56) && u0.b.f17347o == 0) {
                        u0.d.C2(1);
                        l0.c0.f13017k = 4;
                        l0.b0.b(l0.c0.f13018l);
                    }
                    l0.c0.f13013g = i50;
                    l0.c0.f13014h = i52;
                    l0.c0.f13015i = i54;
                    l0.c0.f13016j = i56;
                    u0.d.D2(l0.h0.o(bArr[i49] & 255));
                    u0.d.E2(l0.h0.o(bArr[i51] & 255));
                    u0.d.F2(l0.h0.o(bArr[i53] & 255));
                    u0.d.G2(l0.h0.o(bArr[i55] & 255));
                    return;
                }
                return;
            }
            if (b2 == 66) {
                qt.y0(107, (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280));
                return;
            }
            if (b2 == 113) {
                int i57 = bArr[i2 + 2] & 255;
                qt.y0(108, (i57 >> 7) & 1);
                qt.y0(109, (i57 >> 6) & 1);
                qt.y0(110, (i57 >> 5) & 1);
                qt.y0(111, (i57 >> 3) & 1);
                int i58 = bArr[i2 + 3] & 255;
                qt.y0(112, (i58 >> 7) & 1);
                qt.y0(113, (i58 >> 6) & 1);
                qt.y0(175, (i58 >> 5) & 1);
                qt.y0(114, (i58 >> 4) & 1);
                qt.y0(115, (i58 >> 3) & 1);
                qt.y0(116, (i58 >> 2) & 1);
                qt.y0(117, (i58 >> 1) & 1);
                return;
            }
            if (b2 == 114) {
                int i59 = bArr[i2 + 2] & 255;
                int i60 = bArr[i2 + 3] & 255;
                qt.y0(118, (i59 >> 7) & 1);
                qt.y0(119, (i59 >> 6) & 1);
                qt.y0(120, (i59 >> 5) & 1);
                qt.y0(121, (i59 >> 4) & 1);
                qt.y0(177, (i59 >> 3) & 1);
                qt.y0(178, (i59 >> 2) & 1);
                qt.y0(179, (i59 >> 1) & 1);
                qt.y0(180, i59 & 1);
                qt.y0(181, (i60 >> 7) & 1);
                qt.y0(183, (i60 >> 6) & 1);
                qt.y0(182, (i60 >> 5) & 1);
                qt.y0(184, (i60 >> 4) & 1);
                qt.y0(196, (i60 >> 3) & 1);
                return;
            }
            switch (b2) {
                case -127:
                    int i61 = bArr[i2 + 2] & 255;
                    V = (i61 & 128) == 0 ? 0 : 1;
                    W = (i61 & 64) == 0 ? 0 : 1;
                    Y = (i61 & 32) == 0 ? 0 : 1;
                    f5097a0 = (i61 & 16) == 0 ? 0 : 1;
                    f5099c0 = (i61 & 8) == 0 ? 0 : 1;
                    f5101e0 = (i61 & 4) == 0 ? 0 : 1;
                    f5103g0 = (i61 & 2) == 0 ? 0 : 1;
                    qt.y0(138, (i61 >> 7) & 1);
                    qt.y0(139, (i61 >> 6) & 1);
                    qt.y0(140, (i61 >> 5) & 1);
                    qt.y0(141, (i61 >> 4) & 1);
                    qt.y0(142, (i61 >> 3) & 1);
                    qt.y0(143, (i61 >> 2) & 1);
                    qt.y0(144, (i61 >> 1) & 1);
                    int i62 = i2 + 3;
                    X = bArr[i62] & 255;
                    int i63 = i2 + 4;
                    Z = bArr[i63] & 255;
                    int i64 = i2 + 5;
                    f5098b0 = bArr[i64] & 255;
                    int i65 = i2 + 6;
                    f5100d0 = bArr[i65] & 255;
                    int i66 = i2 + 7;
                    f5102f0 = bArr[i66] & 255;
                    int i67 = i2 + 8;
                    f5104h0 = bArr[i67] & 255;
                    qt.y0(145, bArr[i62] & 255);
                    qt.y0(146, bArr[i63] & 255);
                    qt.y0(147, bArr[i64] & 255);
                    qt.y0(148, bArr[i65] & 255);
                    qt.y0(149, bArr[i66] & 255);
                    qt.y0(150, bArr[i67] & 255);
                    qt.y0(151, ((bArr[i2 + 11] & 255) >> 7) & 1);
                    break;
                case -126:
                    byte b5 = bArr[i2 + 2];
                    f5105i0 = (b5 & 128) == 0 ? 0 : 1;
                    f5106j0 = (b5 & 64) == 0 ? 0 : 1;
                    f5108l0 = (b5 & 32) == 0 ? 0 : 1;
                    f5110n0 = (b5 & 16) == 0 ? 0 : 1;
                    f5112p0 = (b5 & 8) == 0 ? 0 : 1;
                    f5114r0 = (b5 & 4) == 0 ? 0 : 1;
                    f5116t0 = (b5 & 2) == 0 ? 0 : 1;
                    qt.y0(152, (b5 >> 7) & 1);
                    qt.y0(153, (b5 >> 6) & 1);
                    qt.y0(154, (b5 >> 5) & 1);
                    qt.y0(155, (b5 >> 4) & 1);
                    qt.y0(156, (b5 >> 3) & 1);
                    qt.y0(157, (b5 >> 2) & 1);
                    qt.y0(158, (b5 >> 1) & 1);
                    int i68 = i2 + 3;
                    f5107k0 = bArr[i68] & 255;
                    int i69 = i2 + 4;
                    f5109m0 = bArr[i69] & 255;
                    int i70 = i2 + 5;
                    f5111o0 = bArr[i70] & 255;
                    int i71 = i2 + 6;
                    f5113q0 = bArr[i71] & 255;
                    int i72 = i2 + 7;
                    f5115s0 = bArr[i72] & 255;
                    int i73 = i2 + 8;
                    f5117u0 = bArr[i73] & 255;
                    qt.y0(159, bArr[i68] & 255);
                    qt.y0(160, bArr[i69] & 255);
                    qt.y0(161, bArr[i70] & 255);
                    qt.y0(162, bArr[i71] & 255);
                    qt.y0(163, bArr[i72] & 255);
                    qt.y0(164, bArr[i73] & 255);
                    qt.y0(165, ((bArr[i2 + 11] & 255) >> 7) & 1);
                    break;
                case -125:
                    if (nt.a()) {
                        j3(bArr[i2 + 2] & 1);
                    }
                    break;
                default:
                    switch (b2) {
                        case 17:
                            int i74 = i2 + 4;
                            int i75 = bArr[i74] & 255;
                            int i76 = i2 + 5;
                            int i77 = bArr[i76] & 255;
                            if (((i75 == 20) | (i75 == 22)) && i77 == 1 && (this.f5140t.b(1, 0) != 17 || (i11 = nt.f8633a) == 459004 || i11 == 524540 || i11 == 590076)) {
                                nt.f8643f[173].s(173, new int[]{1}, null, null);
                            }
                            if (i75 == 21 && i77 == 1) {
                                nt.f8643f[174].s(174, new int[]{1}, null, null);
                            }
                            if (nt.a()) {
                                this.f5124d = bArr[i74] & 255;
                                byte b6 = bArr[i76];
                                int i78 = 0;
                                while (true) {
                                    iArr15 = this.f5133m;
                                    if (i78 < iArr15.length) {
                                        int i79 = this.f5124d;
                                        if (i79 != iArr15[i78][0]) {
                                            i78++;
                                        } else if (i79 != 0) {
                                            this.f5123c = i78;
                                        }
                                    }
                                }
                                int i80 = this.f5124d;
                                if (i80 != 8) {
                                    if (i80 != 9) {
                                        if ((b6 & 255) == 0) {
                                            int i81 = this.f5123c;
                                            if (i81 < iArr15.length && i81 != 255) {
                                                l0.b0.l0(iArr15[i81][1], 1);
                                            }
                                            this.f5123c = 255;
                                        } else if (i78 < iArr15.length) {
                                            l0.b0.l0(iArr15[i78][1], 0);
                                        }
                                    } else if ((b6 & 255) == 1) {
                                        int i82 = h0.c.E;
                                        if (i82 == 3 || i82 == 4 || i82 == 5 || u0.i.l3().r3()) {
                                            l0.b0.l0(18, 0);
                                            l0.b0.l0(18, 1);
                                        } else {
                                            l0.b0.l0(3, 0);
                                            l0.b0.l0(3, 1);
                                        }
                                    }
                                } else if ((b6 & 255) == 1) {
                                    int i83 = h0.c.E;
                                    if (i83 == 3 || i83 == 4 || i83 == 5 || u0.i.l3().r3()) {
                                        l0.b0.l0(26, 0);
                                        l0.b0.l0(26, 1);
                                    } else {
                                        l0.b0.l0(4, 0);
                                        l0.b0.l0(4, 1);
                                    }
                                }
                                qt.i(bArr[i2 + 9], bArr[i2 + 8], true, 540);
                            }
                            break;
                        case 18:
                            byte b7 = bArr[i2 + 4];
                            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                                qt.y0(1, (b7 >> 6) & 1);
                                qt.y0(2, (b7 >> 7) & 1);
                            } else {
                                qt.y0(1, (b7 >> 7) & 1);
                                qt.y0(2, (b7 >> 6) & 1);
                            }
                            qt.y0(3, (b7 >> 5) & 1);
                            qt.y0(4, (b7 >> 4) & 1);
                            qt.y0(5, (b7 >> 3) & 1);
                            break;
                        case 19:
                            qt.y0(98, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                            qt.y0(99, ((bArr[i2 + 4] & 255) << 8) | (bArr[i2 + 5] & 255));
                            qt.y0(104, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                            break;
                        case 20:
                            qt.y0(100, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                            qt.y0(102, bArr[i2 + 5] & 255);
                            qt.y0(101, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                            break;
                        case 21:
                            qt.y0(103, ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 3] & 255));
                            qt.y0(105, bArr[i2 + 5] & 255);
                            qt.y0(106, (bArr[i2 + 7] & 255) | ((bArr[i2 + 6] & 255) << 8));
                            break;
                    }
                    break;
            }
            return;
        }
        this.f5125e = (bArr[i2 + 2] & 255) | 128;
        byte b8 = bArr[i2 + 3];
        int i84 = nt.f8633a;
        if (i84 == 721148 || i84 == 1704188 || i84 == 1376508 || i84 == 2752764 || i84 == 3080444) {
            int i85 = 0;
            while (true) {
                iArr = this.f5137q;
                if (i85 >= iArr.length) {
                    break;
                }
                int i86 = this.f5125e;
                if (i86 == iArr[i85][0]) {
                    if (i86 == 0) {
                        break;
                    }
                    this.f5126f = i85;
                    break;
                }
                i85++;
            }
            if (this.f5125e == 168) {
                if ((b8 & 255) == 1) {
                    w3();
                    return;
                }
                return;
            } else if ((b8 & 255) != 0) {
                if (i85 < iArr.length) {
                    l0.b0.l0(iArr[i85][1], 0);
                    return;
                }
                return;
            } else {
                int i87 = this.f5126f;
                if ((i87 < iArr.length) & (i87 != 255)) {
                    l0.b0.l0(iArr[i87][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i84 == 1245436 || i84 == 1114364) {
            int i88 = 0;
            while (true) {
                iArr2 = this.f5138r;
                if (i88 >= iArr2.length) {
                    break;
                }
                int i89 = this.f5125e;
                if (i89 == iArr2[i88][0]) {
                    if (i89 == 0) {
                        break;
                    }
                    this.f5126f = i88;
                    break;
                }
                i88++;
            }
            if (this.f5125e == 168) {
                if ((b8 & 255) == 1) {
                    w3();
                    return;
                }
                return;
            } else if ((b8 & 255) != 0) {
                if (i88 < iArr2.length) {
                    l0.b0.l0(iArr2[i88][1], 0);
                    return;
                }
                return;
            } else {
                int i90 = this.f5126f;
                if ((i90 < iArr2.length) & (i90 != 255)) {
                    l0.b0.l0(iArr2[i90][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i84 == 786684) {
            int i91 = 0;
            while (true) {
                iArr14 = this.f5139s;
                if (i91 >= iArr14.length) {
                    break;
                }
                int i92 = this.f5125e;
                if (i92 == iArr14[i91][0]) {
                    if (i92 == 0) {
                        break;
                    }
                    this.f5126f = i91;
                    break;
                }
                i91++;
            }
            if ((b8 & 255) != 0) {
                if (i91 < iArr14.length) {
                    l0.b0.l0(iArr14[i91][1], 0);
                    return;
                }
                return;
            } else {
                int i93 = this.f5126f;
                if ((i93 < iArr14.length) & (i93 != 255)) {
                    l0.b0.l0(iArr14[i93][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        int i94 = this.H;
        if (i94 == 12) {
            int i95 = 0;
            while (true) {
                iArr13 = this.f5127g;
                if (i95 >= iArr13.length) {
                    break;
                }
                int i96 = this.f5125e;
                if (i96 == iArr13[i95][0]) {
                    if (i96 == 0) {
                        break;
                    }
                    this.f5126f = i95;
                    break;
                }
                i95++;
            }
            if ((b8 & 255) != 0) {
                if (i95 < iArr13.length) {
                    l0.b0.l0(iArr13[i95][1], 0);
                    return;
                }
                return;
            } else {
                int i97 = this.f5126f;
                if ((i97 < iArr13.length) & (i97 != 255)) {
                    l0.b0.l0(iArr13[i97][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 20) {
            int i98 = 0;
            while (true) {
                iArr12 = this.f5128h;
                if (i98 >= iArr12.length) {
                    break;
                }
                int i99 = this.f5125e;
                if (i99 == iArr12[i98][0]) {
                    if (i99 == 0) {
                        break;
                    }
                    this.f5126f = i98;
                    break;
                }
                i98++;
            }
            if ((b8 & 255) != 0) {
                if (i98 < iArr12.length) {
                    l0.b0.l0(iArr12[i98][1], 0);
                    return;
                }
                return;
            } else {
                int i100 = this.f5126f;
                if ((i100 < iArr12.length) & (i100 != 255)) {
                    l0.b0.l0(iArr12[i100][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 13) {
            int i101 = 0;
            while (true) {
                iArr11 = this.f5129i;
                if (i101 >= iArr11.length) {
                    break;
                }
                int i102 = this.f5125e;
                if (i102 == iArr11[i101][0]) {
                    if (i102 == 0) {
                        break;
                    }
                    this.f5126f = i101;
                    break;
                }
                i101++;
            }
            if ((b8 & 255) != 0) {
                if (i101 < iArr11.length) {
                    l0.b0.l0(iArr11[i101][1], 0);
                    return;
                }
                return;
            } else {
                int i103 = this.f5126f;
                if ((i103 < iArr11.length) & (i103 != 255)) {
                    l0.b0.l0(iArr11[i103][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 21) {
            int i104 = 0;
            while (true) {
                iArr10 = this.f5130j;
                if (i104 >= iArr10.length) {
                    break;
                }
                int i105 = this.f5125e;
                if (i105 == iArr10[i104][0]) {
                    if (i105 == 0) {
                        break;
                    }
                    this.f5126f = i104;
                    break;
                }
                i104++;
            }
            if ((b8 & 255) != 0) {
                if (i104 < iArr10.length) {
                    l0.b0.l0(iArr10[i104][1], 0);
                    return;
                }
                return;
            } else {
                int i106 = this.f5126f;
                if ((i106 < iArr10.length) & (i106 != 255)) {
                    l0.b0.l0(iArr10[i106][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 15) {
            int i107 = 0;
            while (true) {
                iArr9 = this.f5131k;
                if (i107 >= iArr9.length) {
                    break;
                }
                int i108 = this.f5125e;
                if (i108 == iArr9[i107][0]) {
                    if (i108 == 0) {
                        break;
                    }
                    this.f5126f = i107;
                    break;
                }
                i107++;
            }
            if ((b8 & 255) != 0) {
                if (i107 < iArr9.length) {
                    l0.b0.l0(iArr9[i107][1], 0);
                    return;
                }
                return;
            } else {
                int i109 = this.f5126f;
                if ((i109 < iArr9.length) & (i109 != 255)) {
                    l0.b0.l0(iArr9[i109][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 24) {
            int i110 = 0;
            while (true) {
                iArr8 = this.f5132l;
                if (i110 >= iArr8.length) {
                    break;
                }
                int i111 = this.f5125e;
                if (i111 == iArr8[i110][0]) {
                    if (i111 == 0) {
                        break;
                    }
                    this.f5126f = i110;
                    break;
                }
                i110++;
            }
            if ((b8 & 255) != 0) {
                if (i110 < iArr8.length) {
                    l0.b0.l0(iArr8[i110][1], 0);
                    return;
                }
                return;
            } else {
                int i112 = this.f5126f;
                if ((i112 < iArr8.length) & (i112 != 255)) {
                    l0.b0.l0(iArr8[i112][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 16) {
            int i113 = 0;
            while (true) {
                iArr7 = this.f5133m;
                if (i113 >= iArr7.length) {
                    break;
                }
                int i114 = this.f5125e;
                if (i114 == iArr7[i113][0]) {
                    if (i114 == 0) {
                        break;
                    }
                    this.f5126f = i113;
                    break;
                }
                i113++;
            }
            if ((b8 & 255) != 0) {
                if (i113 < iArr7.length) {
                    l0.b0.l0(iArr7[i113][1], 0);
                    return;
                }
                return;
            } else {
                int i115 = this.f5126f;
                if ((i115 < iArr7.length) & (i115 != 255)) {
                    l0.b0.l0(iArr7[i115][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 9) {
            int i116 = 0;
            while (true) {
                iArr6 = this.f5134n;
                if (i116 >= iArr6.length) {
                    break;
                }
                int i117 = this.f5125e;
                if (i117 == iArr6[i116][0]) {
                    if (i117 == 0) {
                        break;
                    }
                    this.f5126f = i116;
                    break;
                }
                i116++;
            }
            if ((b8 & 255) != 0) {
                if (i116 < iArr6.length) {
                    l0.b0.l0(iArr6[i116][1], 0);
                    return;
                }
                return;
            } else {
                int i118 = this.f5126f;
                if ((i118 < iArr6.length) & (i118 != 255)) {
                    l0.b0.l0(iArr6[i118][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 10) {
            int i119 = 0;
            while (true) {
                iArr5 = this.f5135o;
                if (i119 >= iArr5.length) {
                    break;
                }
                int i120 = this.f5125e;
                if (i120 == iArr5[i119][0]) {
                    if (i120 == 0) {
                        break;
                    }
                    this.f5126f = i119;
                    break;
                }
                i119++;
            }
            if ((b8 & 255) != 0) {
                if (i119 < iArr5.length) {
                    l0.b0.l0(iArr5[i119][1], 0);
                    return;
                }
                return;
            } else {
                int i121 = this.f5126f;
                if ((i121 < iArr5.length) & (i121 != 255)) {
                    l0.b0.l0(iArr5[i121][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        if (i94 == 3) {
            int i122 = 0;
            while (true) {
                iArr4 = this.f5136p;
                if (i122 >= iArr4.length) {
                    break;
                }
                int i123 = this.f5125e;
                if (i123 == iArr4[i122][0]) {
                    if (i123 == 0) {
                        break;
                    }
                    this.f5126f = i122;
                    break;
                }
                i122++;
            }
            if ((b8 & 255) != 0) {
                if (i122 < iArr4.length) {
                    l0.b0.l0(iArr4[i122][1], 0);
                    return;
                }
                return;
            } else {
                int i124 = this.f5126f;
                if ((i124 < iArr4.length) & (i124 != 255)) {
                    l0.b0.l0(iArr4[i124][1], 1);
                }
                this.f5126f = 255;
                return;
            }
        }
        int i125 = 0;
        while (true) {
            iArr3 = this.f5134n;
            if (i125 >= iArr3.length) {
                break;
            }
            int i126 = this.f5125e;
            if (i126 == iArr3[i125][0]) {
                if (i126 == 0) {
                    break;
                }
                this.f5126f = i125;
                break;
            }
            i125++;
        }
        if ((b8 & 255) != 0) {
            if (i125 < iArr3.length) {
                l0.b0.l0(iArr3[i125][1], 0);
            }
        } else {
            int i127 = this.f5126f;
            if ((i127 < iArr3.length) & (i127 != 255)) {
                l0.b0.l0(iArr3[i127][1], 1);
            }
            this.f5126f = 255;
        }
    }

    @Override // k0.lt
    public void W2() {
        this.f5140t.j();
        qt.q0(this.O);
        y0.g.f18094d.d(this.P);
        y0.g.f18095e.d(this.P);
        w0.e.f17815a.d(this.O);
        w0.e.f17819e.d(this.O);
        u0.c.f17386m.d(this.T);
        qt.q0(this.Q);
        qt.q0(this.M);
        u0.c.f17388o.d(this.N);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 258) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 45) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            t3(202, 3, iArr[0]);
        }
        if (i2 == 46) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            t3(202, 5, iArr[0]);
            return;
        }
        if (i2 == 51) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            t3(154, 1, iArr[0]);
            return;
        }
        if (i2 == 52) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            t3(140, 1, 255);
            return;
        }
        if (i2 == 101) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            if (iArr[0] == 17) {
                m3(iArr[1]);
                return;
            } else if (iArr[0] == 18) {
                n3(iArr[1]);
                return;
            } else {
                t3(125, iArr[0], iArr[1]);
                return;
            }
        }
        if (i2 == 102) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            if (iArr[0] != 0) {
                iArr[0] = 1;
            }
            a3(iArr[0]);
            return;
        }
        switch (i2) {
            case 9:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 1, iArr[0]);
                    break;
                }
                break;
            case 10:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 2, iArr[0]);
                    break;
                }
                break;
            case 11:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 3, iArr[0]);
                    break;
                }
                break;
            case 12:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 4, iArr[0]);
                    break;
                }
                break;
            case 13:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 5, iArr[0]);
                    break;
                }
                break;
            case 14:
                if (iArr != null && iArr.length > 0) {
                    t3(123, 6, iArr[0]);
                    break;
                }
                break;
            case 15:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 8, iArr[0]);
                    break;
                }
                break;
            case 16:
                if (iArr != null && iArr.length > 0) {
                    t3(123, 9, iArr[0]);
                    break;
                }
                break;
            case 17:
                if (iArr != null && iArr.length > 0) {
                    t3(123, 10, iArr[0]);
                    break;
                }
                break;
            case 18:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 11, iArr[0]);
                    break;
                }
                break;
            case 19:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 12, iArr[0]);
                    break;
                }
                break;
            case 20:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(123, 13, iArr[0]);
                    break;
                }
                break;
            case 21:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(125, 1, iArr[0]);
                    break;
                }
                break;
            case 22:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(125, 2, iArr[0]);
                    break;
                }
                break;
            case 23:
                if (iArr != null && iArr.length > 0) {
                    t3(125, 3, iArr[0]);
                    break;
                }
                break;
            case 24:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(125, 4, iArr[0]);
                    break;
                }
                break;
            case 25:
                if (iArr != null && iArr.length > 0) {
                    if (iArr[0] != 0) {
                        iArr[0] = 1;
                    }
                    t3(125, 5, iArr[0]);
                    break;
                }
                break;
            case 26:
                if (iArr != null && iArr.length > 0) {
                    t3(123, 10, iArr[0]);
                    break;
                }
                break;
            case 27:
                if (iArr != null && iArr.length > 0) {
                    z3(iArr[0]);
                    switch (iArr[0]) {
                        case 20:
                            t3(36, 12, 0);
                            break;
                        case 21:
                            t3(36, 13, 0);
                            break;
                        case 22:
                        default:
                            t3(36, iArr[0], 0);
                            break;
                        case 23:
                            t3(36, 22, 0);
                            break;
                        case 24:
                            t3(36, 15, 0);
                            break;
                        case 25:
                            t3(36, 23, 0);
                            break;
                        case 26:
                            t3(36, 24, 0);
                            break;
                        case 27:
                            t3(36, 25, 0);
                            break;
                    }
                }
                break;
            default:
                switch (i2) {
                    case 60:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            V = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 61:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            W = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 62:
                        if (iArr != null && iArr.length > 0) {
                            X = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 63:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            Y = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 64:
                        if (iArr != null && iArr.length > 0) {
                            Z = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 65:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5097a0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 66:
                        if (iArr != null && iArr.length > 0) {
                            f5098b0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 67:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5099c0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 68:
                        if (iArr != null && iArr.length > 0) {
                            f5100d0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 69:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5101e0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 70:
                        if (iArr != null && iArr.length > 0) {
                            f5102f0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 71:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5103g0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 72:
                        if (iArr != null && iArr.length > 0) {
                            f5104h0 = iArr[0];
                            y3();
                            break;
                        }
                        break;
                    case 73:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5105i0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 74:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5106j0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 75:
                        if (iArr != null && iArr.length > 0) {
                            f5107k0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 76:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5108l0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 77:
                        if (iArr != null && iArr.length > 0) {
                            f5109m0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 78:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5110n0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 79:
                        if (iArr != null && iArr.length > 0) {
                            f5111o0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 80:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5112p0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 81:
                        if (iArr != null && iArr.length > 0) {
                            f5113q0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 82:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5114r0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 83:
                        if (iArr != null && iArr.length > 0) {
                            f5115s0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 84:
                        if (iArr != null && iArr.length > 0) {
                            if (iArr[0] != 0) {
                                iArr[0] = 1;
                            }
                            f5116t0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    case 85:
                        if (iArr != null && iArr.length > 0) {
                            f5117u0 = iArr[0];
                            l3();
                            break;
                        }
                        break;
                    default:
                        switch (i2) {
                            case 89:
                                if (iArr != null && iArr.length > 0) {
                                    o3(iArr[0]);
                                    break;
                                }
                                break;
                            case 90:
                                if (iArr != null && iArr.length > 0) {
                                    u3(iArr[0]);
                                    break;
                                }
                                break;
                            case 91:
                                t3(42, 22, 1);
                                t3(42, 22, 0);
                                t3(33, 22, 1);
                                t3(33, 22, 0);
                                break;
                            case 92:
                                t3(42, 23, 1);
                                t3(42, 23, 0);
                                t3(33, 23, 1);
                                t3(33, 23, 0);
                                break;
                            case 93:
                                t3(42, 24, 1);
                                t3(42, 24, 0);
                                t3(33, 24, 1);
                                t3(33, 24, 0);
                                break;
                            case 94:
                                t3(42, 25, 1);
                                t3(42, 25, 0);
                                t3(33, 25, 1);
                                t3(33, 25, 0);
                                break;
                            case 95:
                                t3(42, 26, 1);
                                t3(42, 26, 0);
                                t3(33, 26, 1);
                                t3(33, 26, 0);
                                break;
                            case 96:
                                t3(42, 36, 1);
                                t3(42, 36, 0);
                                t3(33, 36, 1);
                                t3(33, 36, 0);
                                break;
                            case 97:
                                t3(42, 37, 1);
                                t3(42, 37, 0);
                                t3(33, 37, 1);
                                t3(33, 37, 0);
                                break;
                            case 98:
                                t3(42, 38, 1);
                                t3(42, 38, 0);
                                t3(33, 38, 1);
                                t3(33, 38, 0);
                                break;
                            case 99:
                                t3(42, 39, 1);
                                t3(42, 39, 0);
                                t3(33, 39, 1);
                                t3(33, 39, 0);
                                break;
                            default:
                                switch (i2) {
                                    case 104:
                                        int i3 = iArr[0];
                                        if (i3 == 2) {
                                            A3(iArr[1], 5, 200, iArr[0]);
                                            break;
                                        } else if (i3 == 3) {
                                            A3(iArr[1], 6, 201, iArr[0]);
                                            break;
                                        } else {
                                            switch (i3) {
                                                case 11:
                                                    A3(iArr[1], 7, 202, iArr[0]);
                                                    break;
                                                case 12:
                                                    A3(iArr[1], 8, 203, iArr[0]);
                                                    break;
                                                case 13:
                                                    A3(iArr[1], 9, 204, iArr[0]);
                                                    break;
                                                case 14:
                                                    A3(iArr[1], 10, 205, iArr[0]);
                                                    break;
                                                case 15:
                                                    A3(iArr[1], 11, 206, iArr[0]);
                                                    break;
                                                case 16:
                                                    A3(iArr[1], 12, 207, iArr[0]);
                                                    break;
                                            }
                                        }
                                        break;
                                    case 105:
                                        z.k.s(227, 2, 123, (byte) iArr[0], (byte) iArr[1]);
                                        break;
                                    case 106:
                                        z.k.s(227, 2, 59, (byte) iArr[0], (byte) iArr[1]);
                                        break;
                                }
                                break;
                        }
                        break;
                }
                break;
        }
    }

    public void a3(int i2) {
        f5119w0 = i2;
        qt.y0(195, i2);
        int iB = this.f5140t.b(2, 0);
        int i3 = f5119w0;
        if (iB != i3) {
            this.f5140t.g(2, i3);
        }
        z.k.s(227, 2, 123, 3, (byte) i2);
    }

    public final void f3() {
        int[] iArr = new int[15];
        int i2 = 0;
        iArr[0] = 13;
        iArr[1] = 225;
        iArr[2] = h3();
        for (int i3 = 3; i3 < 15; i3++) {
            iArr[i3] = 32;
        }
        int i4 = u0.b.D;
        if (i4 == 4) {
            int i5 = o0.e.B;
            iArr[3] = ((i5 / 100) % 10) + 48;
            iArr[4] = ((i5 % 100) / 10) + 48;
            iArr[5] = (i5 % 10) + 48;
            int i6 = o0.e.f16794r;
            iArr[7] = ((((i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[8] = (((i6 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[9] = (((i6 % 60) / 10) % 10) + 48;
            iArr[10] = (i6 % 10) + 48;
        } else if (i4 == 8 || i4 == 10) {
            int i7 = u0.b.r3;
            iArr[3] = ((i7 / 100) % 10) + 48;
            iArr[4] = ((i7 % 100) / 10) + 48;
            iArr[5] = (i7 % 10) + 48;
            int i8 = u0.b.t3;
            iArr[7] = ((((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) / 10) % 10) + 48;
            iArr[8] = (((i8 % BatchedScanSettings.MAX_INTERVAL_SEC) / 60) % 10) + 48;
            iArr[9] = (((i8 % 60) / 10) % 10) + 48;
            iArr[10] = (i8 % 10) + 48;
        }
        int[] iArr2 = new int[16];
        iArr2[0] = 227;
        while (i2 < 15) {
            int i9 = i2 + 1;
            iArr2[i9] = iArr[i2];
            i2 = i9;
        }
        z.k.s(iArr2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final int h3() {
        int i2 = 13;
        switch (u0.b.D) {
            case 1:
                int i3 = w0.d.f17796h;
                if (i3 == 65536 || i3 == 65537 || i3 == 65538) {
                    i2 = 1;
                    break;
                } else if (i3 == 0 || i3 == 1) {
                    i2 = 4;
                    break;
                }
            case 0:
            case 9:
            default:
                i2 = 0;
                break;
            case 2:
            case 3:
            case 12:
                i2 = 133;
                break;
            case 4:
                if (o0.e.H == 1) {
                    i2 = 6;
                }
                break;
            case 5:
                i2 = 12;
                break;
            case 6:
                i2 = 8;
                break;
            case 7:
                i2 = 11;
                break;
            case 8:
            case 10:
                break;
            case 11:
                if (w0.d.f17796h != 1) {
                    i2 = 4;
                } else {
                    i2 = 1;
                }
                break;
            case 13:
                i2 = 21;
                break;
        }
        if (u0.b.f17347o == 1) {
            return 16;
        }
        return i2;
    }

    public void j3(int i2) {
        this.K = i2;
        boolean z2 = i2 == 1;
        if (this.L != i2) {
            if (z2) {
                qt.y0(1015, 1);
            } else {
                qt.y0(1015, 0);
            }
        }
        this.L = this.K;
    }

    public final void l3() {
        z.k.s(227, 10, -117, (byte) ((f5105i0 << 7) | (f5106j0 << 6) | (f5108l0 << 5) | (f5110n0 << 4) | (f5112p0 << 3) | (f5114r0 << 2) | (f5116t0 << 1)), (byte) f5107k0, (byte) f5109m0, (byte) f5111o0, (byte) f5113q0, (byte) f5115s0, (byte) f5117u0, 0, 0, 0);
    }

    public void m3(int i2) {
        f5120x0 = i2;
        qt.y0(198, i2);
        int iB = this.f5140t.b(3, 0);
        int i3 = f5120x0;
        if (iB != i3) {
            this.f5140t.g(3, i3);
        }
        z.k.s(227, 2, 125, 17, (byte) i2);
    }

    public void n3(int i2) {
        f5121y0 = i2;
        qt.y0(199, i2);
        int iB = this.f5140t.b(4, 0);
        int i3 = f5121y0;
        if (iB != i3) {
            this.f5140t.g(4, i3);
        }
        z.k.s(227, 2, 125, 18, (byte) i2);
    }

    public void o3(int i2) {
        f5118v0 = i2;
        qt.y0(i.a.Theme_actionModeFindDrawable, i2);
        int iB = this.f5140t.b(13, 0);
        int i3 = f5118v0;
        if (iB != i3) {
            this.f5140t.g(13, i3);
        }
    }

    public final void t3(int i2, int i3, int i4) {
        z.k.s(227, 2, (byte) i2, (byte) i3, (byte) i4);
    }

    public final void u3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 4, 27, b2, b2, 1, -1);
    }

    public final void v3(byte b2, String str) {
        if (str == null) {
            str = ProxyProperties.LOCAL_EXCL_LIST;
        }
        int[] iArr = new int[35];
        iArr[0] = 227;
        iArr[1] = 32;
        iArr[2] = b2;
        int length = str.length() <= 15 ? str.length() : 15;
        for (int i2 = 0; i2 < length; i2++) {
            int iCodePointAt = str.codePointAt(i2);
            int i3 = i2 << 1;
            iArr[i3 + 3] = (iCodePointAt >> 8) & 255;
            iArr[i3 + 4] = iCodePointAt & 255;
        }
        z.k.s(iArr);
    }

    public final void w3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP")) {
                return;
            }
            Intent intent = new Intent();
            intent.setClassName("com.syu.canbus", "com.syu.carinfo.air.Air_Activity_All_Toyota_prado_HP");
            intent.addCategory(Intent.CATEGORY_DEFAULT);
            intent.setFlags(268435456);
            App.c().startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void x3() {
        if (qt.i0().equals("com.syu.carinfo.psa_all.PSA407CarCDC")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.psa_all.PSA407CarCDC");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void y3() {
        z.k.s(227, 10, -118, (byte) ((V << 7) | (W << 6) | (Y << 5) | (f5097a0 << 4) | (f5099c0 << 3) | (f5101e0 << 2) | (f5103g0 << 1)), (byte) X, (byte) Z, (byte) f5098b0, (byte) f5100d0, (byte) f5102f0, (byte) f5104h0, 0, 0, 0);
    }

    public void z3(int i2) {
        this.H = i2;
        if (this.f5140t.b(1, 0) != i2) {
            this.f5140t.g(1, i2);
        }
    }
}
