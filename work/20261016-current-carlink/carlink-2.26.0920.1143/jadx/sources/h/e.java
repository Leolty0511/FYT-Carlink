package h;

import android.app.m;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.PersistableBundle;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import e.y;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f933b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.syu.carlink.carplay.a f934d = new com.syu.carlink.carplay.a();

    @Override // android.os.Binder, android.os.IBinder
    public final void linkToDeath(IBinder.DeathRecipient deathRecipient, int i2) {
        t.b.h(deathRecipient, "recipient");
        super.linkToDeath(deathRecipient, i2);
        n.b.a("HDL", "=================>>>  linkToDeath ");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:173:0x0540  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [int] */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // android.os.Binder
    public final boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        boolean z2;
        boolean z3;
        int i4;
        Handler handler;
        Handler handler2;
        l.b bVar;
        l.a aVar;
        t.b.h(parcel, "data");
        int i5 = i2 >> 8;
        n.b.a("HDL", "onTransact ====>>>>  hwcode: " + i5 + "  code: " + i2);
        int i6 = i2 & 255;
        int i7 = 2;
        int i8 = 1;
        if (i6 != 1 && i6 != 2) {
            return super.onTransact(i2, parcel, parcel2, i3);
        }
        n.b.a("HDL", "onCarplayNotify  cmdid: " + i5);
        int i9 = 7;
        if (i5 != 100) {
            if (i5 == 101) {
                parcel.enforceInterface("CarplayServer.ICarplayListener");
                s.a aVar2 = com.syu.carlink.base.a.c;
                e.b.a().b(new g.a(1, 4, 10, null, null, 24));
            } else if (i5 != 113) {
                switch (i5) {
                    case 105:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i10 = parcel.readInt();
                        int i11 = parcel.readInt();
                        String string = parcel.readString();
                        StringBuilder sbT = android.accessibilityservice.c.t("code: ", i10, " len: ", i11, " : msg: ");
                        sbT.append(string);
                        n.b.a("HDL", sbT.toString());
                        s.a aVar3 = com.syu.carlink.base.a.c;
                        e.b.a().b(new g.a(1, i10, i11, null, string, 8));
                        break;
                    case 106:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i12 = parcel.readInt();
                        String string2 = parcel.readString();
                        String string3 = parcel.readString();
                        n.b.a("HDL", "type: " + i12 + " name: " + string2 + " : msg: " + string3);
                        g.a aVar4 = new g.a(0, i12, 0, string2, string3, 4);
                        s.a aVar5 = com.syu.carlink.base.a.c;
                        e.b.a().b(aVar4);
                        break;
                    case 107:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i13 = parcel.readInt();
                        n.b.a("HDL", "CARPLAY_S2C_PHONESTATE : code: " + i13);
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        CarLinkService carLinkServiceF = carLink.f();
                        if (carLinkServiceF != null && (handler = carLinkServiceF.f581f) != null) {
                            handler.post(new y(i13, i8));
                        }
                        break;
                        break;
                    case 108:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i14 = parcel.readInt();
                        CarLink carLink2 = CarLink.f562i;
                        if (carLink2 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        CarLinkService carLinkServiceF2 = carLink2.f();
                        if (carLinkServiceF2 != null && (handler2 = carLinkServiceF2.f581f) != null) {
                            handler2.post(new y(i14, i7));
                        }
                        break;
                        break;
                    case 109:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i15 = parcel.readInt();
                        n.b.a("HDL", "STATE_WIRELESS state: " + i15);
                        s.a aVar6 = com.syu.carlink.base.a.c;
                        e.b.a().b(new g.a(1, 3, i15, null, null, 24));
                        break;
                    case 110:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        PersistableBundle persistableBundleCreateFromParcel = parcel.readInt() != 0 ? PersistableBundle.CREATOR.createFromParcel(parcel) : null;
                        n.b.a("HDL", "CARPLAY_S2C_BTDATA ----------------->> bundle : " + persistableBundleCreateFromParcel + ' ');
                        if (persistableBundleCreateFromParcel != null) {
                            String string4 = persistableBundleCreateFromParcel.getString("_btcmd");
                            int i16 = persistableBundleCreateFromParcel.getInt("$CarPlay.AudioState", -1);
                            int i17 = persistableBundleCreateFromParcel.getInt("$CarPlay.ConnectState", -1);
                            int i18 = persistableBundleCreateFromParcel.getInt("$CarPlay.WifiApCtl", -1);
                            int i19 = persistableBundleCreateFromParcel.getInt("$CarPlay.PhoneCpState", Integer.MIN_VALUE);
                            StringBuilder sb = new StringBuilder("CARPLAY_S2C_BTDATA -------->> bundle : ");
                            sb.append(persistableBundleCreateFromParcel);
                            sb.append(" msg: ");
                            sb.append(string4);
                            sb.append("  audioFlag:");
                            m.u(sb, i16, " connectType:", i17, "  phoneCpOpen:");
                            sb.append(i19);
                            n.b.a("HDL", sb.toString());
                            if (string4 != null) {
                                if (string4.startsWith("AT#SP")) {
                                    s.a aVar7 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 4, 11, null, null, 24));
                                } else if (string4.startsWith("AT#SH")) {
                                    s.a aVar8 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 4, 12, null, null, 24));
                                } else if (string4.startsWith("AT#CD")) {
                                    s.a aVar9 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 4, 14, null, null, 24));
                                }
                            }
                            if (i16 >= 0) {
                                StringBuilder sb2 = new StringBuilder("Carplay Audio media ----------------->> audioFlag : ");
                                String str = String.format("%03X ", Arrays.copyOf(new Object[]{Integer.valueOf(i16)}, 1));
                                t.b.g(str, "format(format, *args)");
                                sb2.append(str);
                                sb2.append(' ');
                                n.b.a("HDL", sb2.toString());
                                int i20 = i16 & 4095;
                                if (i20 == 0 || i20 == 1) {
                                    CarLink carLink3 = CarLink.f562i;
                                    if (carLink3 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink3.j().f905y.postValue(Boolean.valueOf(i16 == 1));
                                } else if (i20 == 2048 || i20 == 2049) {
                                    boolean z4 = i16 == 2049;
                                    CarLink carLink4 = CarLink.f562i;
                                    if (carLink4 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    Boolean bool = (Boolean) carLink4.j().A.getValue();
                                    if (bool == null) {
                                        bool = Boolean.FALSE;
                                    }
                                    boolean zBooleanValue = bool.booleanValue();
                                    CarLink carLink5 = CarLink.f562i;
                                    if (carLink5 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    if (!t.b.a(carLink5.j().B.getValue(), Boolean.TRUE) || zBooleanValue != z4) {
                                        CarLink carLink6 = CarLink.f562i;
                                        if (carLink6 == null) {
                                            t.b.B("me");
                                            throw null;
                                        }
                                        carLink6.j().A.postValue(Boolean.valueOf(i16 == 2049));
                                    }
                                }
                            }
                            if (i17 >= 0) {
                                CarLink carLink7 = CarLink.f562i;
                                if (carLink7 == null) {
                                    t.b.B("me");
                                    throw null;
                                }
                                carLink7.j().f906z.postValue(Boolean.valueOf(i17 == 1));
                            }
                            if (i18 >= 0) {
                                if (i18 == 0) {
                                    s.a aVar10 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 4, 17, null, null, 24));
                                } else if (i18 == 1) {
                                    s.a aVar11 = com.syu.carlink.base.a.c;
                                    e.b.a().b(new g.a(1, 4, 16, null, null, 24));
                                }
                            }
                            CarLink carLink8 = CarLink.f562i;
                            if (carLink8 == null) {
                                t.b.B("me");
                                throw null;
                            }
                            carLink8.j().H.postValue(Integer.valueOf(i19));
                            if (i19 != Integer.MIN_VALUE) {
                                n.b.a("HDL", "phoneCpOpen ----------------->> state : " + i19 + ' ');
                            }
                        }
                        break;
                    case 111:
                        parcel.enforceInterface("CarplayServer.ICarplayListener");
                        int i21 = parcel.readInt();
                        if (i21 > 0) {
                            byte[] bArr = new byte[i21];
                            parcel.readByteArray(bArr);
                            n.b.a("HDL", "CARPLAY_S2C_WRITEBTDATA ----------------->> data size : " + i21 + ' ');
                            s.a aVar12 = com.syu.carlink.base.a.c;
                            com.syu.carlink.base.a aVarA = e.b.a();
                            aVarA.getClass();
                            e.h hVar = aVarA.f670b;
                            if (hVar != null && (bVar = hVar.f764a.C) != null && (aVar = bVar.f1054a) != null) {
                                aVar.f1051b.post(new android.accessibilityservice.a(bArr, aVar, i9));
                            }
                        }
                        break;
                }
            } else {
                parcel.enforceInterface("CarplayServer.ICarplayListener");
                int i22 = parcel.readInt();
                if (i22 == 2) {
                    n.b.a("HDL", " ====>>> CARPLAY_S2C_NOWPLAYINGUPDATES isNowPlayingReady true ");
                    CarLink carLink9 = CarLink.f562i;
                    if (carLink9 == null) {
                        t.b.B("me");
                        throw null;
                    }
                    carLink9.j().B.postValue(Boolean.TRUE);
                } else {
                    PersistableBundle persistableBundleCreateFromParcel2 = i22 == 1 ? PersistableBundle.CREATOR.createFromParcel(parcel) : null;
                    if (persistableBundleCreateFromParcel2 != null) {
                        int i23 = persistableBundleCreateFromParcel2.getInt("$NowPlay.Attr.PlaybackDurationInMs", -1);
                        int i24 = persistableBundleCreateFromParcel2.getInt("$NowPlay.PlaybackElapsedTimeInMs", -1);
                        String string5 = persistableBundleCreateFromParcel2.getString("$NowPlay.MediaItemTitle");
                        String string6 = persistableBundleCreateFromParcel2.getString("$NowPlay.MediaItemArtist");
                        String string7 = persistableBundleCreateFromParcel2.getString("$NowPlay.MediaItemAlbumTitle");
                        String string8 = persistableBundleCreateFromParcel2.getString("$NowPlay.ArtworkFile");
                        int i25 = persistableBundleCreateFromParcel2.getInt("$NowPlay.PlaybackStatus", -1);
                        int i26 = persistableBundleCreateFromParcel2.getInt("$NowPlay.PlaybackShuffleMode", -1);
                        int i27 = persistableBundleCreateFromParcel2.getInt("$NowPlay.PlaybackRepeatMode", -1);
                        StringBuffer stringBuffer = new StringBuffer("CARPLAY_S2C_NOWPLAYINGUPDATES msg: [");
                        if (string5 != null) {
                            stringBuffer.append("\ntitle: " + string5 + ", ");
                        }
                        if (string6 != null) {
                            stringBuffer.append("\nartist: " + string6 + ", ");
                        }
                        if (string7 != null) {
                            stringBuffer.append("\nalbum: " + string7 + ", ");
                        }
                        if (string8 != null) {
                            stringBuffer.append("\ncover: " + string8 + ", ");
                        }
                        if (i23 >= 0) {
                            this.f933b = i23;
                            stringBuffer.append("\nduration: " + i23 + " -- ");
                        }
                        if (i24 >= 0) {
                            stringBuffer.append("position: " + i24);
                            this.c = i24;
                        }
                        if (i25 >= 0) {
                            stringBuffer.append("\nplayState: " + i25);
                        }
                        if (i26 >= 0) {
                            stringBuffer.append("\nshuffleMode: " + i26);
                        }
                        if (i27 >= 0) {
                            stringBuffer.append("\nrepeatMode: " + i27);
                        }
                        stringBuffer.append("\n]");
                        n.b.a("HDL", stringBuffer.toString());
                        CarLink carLink10 = CarLink.f562i;
                        if (carLink10 == null) {
                            t.b.B("me");
                            throw null;
                        }
                        CarLinkService carLinkServiceF3 = carLink10.f();
                        if (carLinkServiceF3 != null) {
                            carLinkServiceF3.l();
                            com.syu.carlink.carplay.a aVar13 = this.f934d;
                            if (string5 != null) {
                                aVar13.getClass();
                                if (!t.b.a(aVar13.f681e, string5)) {
                                    aVar13.f681e = string5;
                                    com.syu.carlink.carplay.a.a(0, string5);
                                }
                            }
                            if (string6 != null) {
                                aVar13.getClass();
                                if (!t.b.a(aVar13.f682f, string6)) {
                                    aVar13.f682f = string6;
                                    com.syu.carlink.carplay.a.a(1, string6);
                                }
                            }
                            if (string7 != null) {
                                aVar13.getClass();
                                if (t.b.a(aVar13.f683g, string7)) {
                                    i4 = 2;
                                } else {
                                    aVar13.f683g = string7;
                                    i4 = 2;
                                    com.syu.carlink.carplay.a.a(2, string7);
                                }
                            } else {
                                i4 = 2;
                            }
                            if (i25 >= 0 && aVar13.f685i != i25) {
                                aVar13.f685i = i25;
                                if (i25 == 1) {
                                    CarLink carLink11 = CarLink.f562i;
                                    if (carLink11 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink11.j().A.postValue(Boolean.TRUE);
                                    com.syu.carlink.carplay.a.b(3, 0);
                                } else if (i25 == i4) {
                                    CarLink carLink12 = CarLink.f562i;
                                    if (carLink12 == null) {
                                        t.b.B("me");
                                        throw null;
                                    }
                                    carLink12.j().A.postValue(Boolean.FALSE);
                                    int[] iArr = new int[i4];
                                    // fill-array-data instruction
                                    iArr[0] = 3;
                                    iArr[1] = 2;
                                    com.syu.carlink.carplay.a.b(iArr);
                                }
                            }
                            int i28 = this.f933b;
                            int i29 = this.c;
                            if (i29 >= 0 && i29 <= i28) {
                                int i30 = i29 / 1000;
                                int i31 = aVar13.f680d;
                                s.a aVar14 = aVar13.f678a;
                                android.net.b bVar2 = aVar13.f679b;
                                if (i31 != i30) {
                                    aVar13.f680d = i30;
                                    if (i30 >= 0 && aVar13.c >= i30) {
                                        ((Handler) aVar14.getValue()).removeCallbacks(bVar2);
                                        ((Handler) aVar14.getValue()).postDelayed(bVar2, 100L);
                                    }
                                }
                                int i32 = this.f933b / 1000;
                                if (aVar13.c != i32) {
                                    aVar13.c = i32;
                                    if (i32 >= 0 && i32 >= aVar13.f680d) {
                                        ((Handler) aVar14.getValue()).removeCallbacks(bVar2);
                                        ((Handler) aVar14.getValue()).postDelayed(bVar2, 100L);
                                    }
                                }
                            }
                            if (i26 >= 0 && aVar13.f686j != i26) {
                                aVar13.f686j = i26;
                                if (i26 >= 0) {
                                    com.syu.carlink.carplay.a.b(6, i26);
                                }
                            }
                            if (i27 >= 0 && aVar13.f687k != i27) {
                                aVar13.f687k = i27;
                                if (i27 >= 0) {
                                    com.syu.carlink.carplay.a.b(7, i27);
                                }
                            }
                            if (string8 != null) {
                                aVar13.getClass();
                                if (!t.b.a(aVar13.f684h, string8)) {
                                    aVar13.f684h = string8;
                                    com.syu.carlink.carplay.a.a(11, string8);
                                }
                            }
                        }
                    }
                }
            }
            z3 = true;
        } else {
            parcel.enforceInterface("CarplayServer.ICarplayListener");
            int i33 = parcel.readInt();
            if (i33 != 0) {
                z2 = true;
                if (i33 == 1) {
                    i9 = 4;
                } else if (i33 == 2) {
                    i9 = 6;
                } else if (i33 != 3) {
                    i9 = i33 != 4 ? -255 : 5;
                }
            } else {
                z2 = true;
                i9 = 3;
            }
            n.b.a("HDL", "LinkState  LinkState.STATE_TYPE_PHONE    to Link State:  " + i9 + "     ------   serverState : " + i33 + ' ');
            CarLink carLink13 = CarLink.f562i;
            if (carLink13 == null) {
                t.b.B("me");
                throw null;
            }
            if (carLink13.C() != 2) {
                CarLink carLink14 = CarLink.f562i;
                if (carLink14 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink14.j().f899s.postValue(Integer.valueOf((int) (i9 != 3 ? z2 : 0)));
                CarLink carLink15 = CarLink.f562i;
                if (carLink15 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink15.j().f901u.postValue(Integer.valueOf(i9));
            }
            z3 = z2;
        }
        if (parcel2 == 0) {
            return z3;
        }
        parcel2.writeInt(0);
        return z3;
    }

    @Override // android.os.Binder, android.os.IBinder
    public final boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i2) {
        t.b.h(deathRecipient, "recipient");
        n.b.a("HDL", "=================>>>  unlinkToDeath");
        return super.unlinkToDeath(deathRecipient, i2);
    }
}
