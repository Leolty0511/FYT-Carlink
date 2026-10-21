package m0;

import android.bluetooth.BluetoothClass;
import android.media.videoeditor.MediaProperties;
import android.net.UrlQuerySanitizer;
import android.provider.Downloads;
import android.view.View;
import android.widget.SpellChecker;
import k0.nt;
import k0.rt;
import o1.e0;
import o1.j0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static void a(Runnable runnable) {
        j0.f16912g.c(runnable);
    }

    public static void b(Runnable runnable) {
        j0.f16915j.c(runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(int i2) {
        if (b.f13168a != i2) {
            a aVarY2 = e.Z2().Y2();
            if (aVarY2 != null) {
                aVarY2.L2();
            }
            a aVarE = e(i2);
            e.Z2().a3(aVarE);
            if (aVarE != 0) {
                aVarE.K2();
            }
            b.f13170c = aVarE;
            if (aVarE instanceof o1.q) {
                o1.q qVar = (o1.q) aVarE;
                if (rt.a3().g3()) {
                    int i3 = nt.f8633a;
                    if (i3 == 8454438 || i3 == 7406023 || i3 == 14352839) {
                        z.a.f18168s.d(z.a.f18158i, qVar);
                    } else {
                        l0.z.f13137a.e(qVar);
                    }
                } else if (nt.f8648i == 0) {
                    int i4 = nt.f8633a;
                    if (i4 == 8454438 || i4 == 7406023 || i4 == 14352839) {
                        z.a.f18168s.d(z.a.f18158i, qVar);
                    } else {
                        z.a.f18161l.e(qVar);
                    }
                } else if (z.a.f18173x != null) {
                    int i5 = nt.f8633a;
                    if (i5 == 8454438 || i5 == 7406023 || i5 == 14352839) {
                        z.a.f18168s.d(z.a.f18158i, qVar);
                    } else {
                        ((z.i) z.a.f18173x).q(qVar);
                    }
                }
            } else if (rt.a3().g3()) {
                l0.z.f13137a.e(null);
            } else {
                z.a.f18161l.e(z.a.f18173x);
            }
            b.f13169b = b.f13168a;
            b.f13168a = i2;
            c.f13185a.c();
            j(100, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:1173:0x0922 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x005b A[FALL_THROUGH, RETURN] */
    public static int d() {
        int i2 = nt.f8633a;
        int i3 = 65535 & i2;
        int i4 = (i2 >> 16) & 65535;
        if (i3 == 1) {
            return 2;
        }
        if (i3 == 2) {
            return 3;
        }
        if (i3 != 3 && i3 != 55 && i3 != 56 && i3 != 86 && i3 != 87) {
            switch (i3) {
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                    break;
                case 15:
                case 16:
                    return 3;
                case 17:
                    return 2;
                case 27:
                    return 3;
                case 51:
                    if (i4 == 60 || i4 == 61 || i4 == 62) {
                        return 9;
                    }
                    return i4 == 65 ? 3 : 12;
                case 59:
                    return 2;
                case 61:
                    return 12;
                case 70:
                    if (i4 == 4 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10 || i4 == 15 || i4 == 16 || i4 == 17 || i4 == 18 || i4 == 19 || i4 == 20 || i4 == 21 || i4 == 22) {
                        return 15;
                    }
                    return (i4 == 11 || i4 == 12) ? 9 : 0;
                case 80:
                    return (i4 == 8 || i4 == 9) ? 9 : 12;
                case 90:
                case 92:
                case 94:
                case 101:
                case 104:
                    return 2;
                case 107:
                    return 5;
                case 108:
                case 109:
                case 110:
                    return 2;
                case 112:
                    if (i4 == 9 || i4 == 10) {
                        return 9;
                    }
                    return (i4 == 49 || i4 == 50 || i4 == 51 || i4 == 56 || i4 == 57 || i4 == 58 || i4 == 75 || i4 == 111 || i4 == 122 || i4 == 133 || i4 == 137 || i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142) ? 3 : 12;
                case 115:
                    return 2;
                case 116:
                    return 3;
                case 117:
                    return (i4 == 1 || i4 == 2 || i4 == 3) ? 15 : 3;
                case 118:
                    return 3;
                case 121:
                case 122:
                    return 2;
                case 124:
                    if (i4 != 2 && i4 != 3) {
                        return 3;
                    }
                case 123:
                    return 12;
                case 125:
                case 126:
                case 128:
                case 129:
                    return 2;
                case 131:
                    if (i4 == 2) {
                        return 7;
                    }
                    return i4 == 3 ? 17 : 0;
                case 132:
                    return 2;
                case 134:
                    return 12;
                case 135:
                    return 3;
                case 136:
                    return 2;
                case 137:
                    return 12;
                case 138:
                    return 5;
                case 139:
                    return (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7) ? 9 : 0;
                case 141:
                    return 12;
                case 142:
                    if (i4 == 1 || i4 == 3) {
                        return 15;
                    }
                    return i4 == 2 ? 9 : 0;
                case 143:
                    return (i4 == 7 || i4 == 8 || i4 == 3 || i4 == 4 || i4 == 5) ? 17 : 3;
                case 144:
                case 145:
                case 150:
                    return 2;
                case 151:
                    return 6;
                case 153:
                    return 12;
                case 155:
                    return 5;
                case 157:
                    return 6;
                case 160:
                    return i4 == 54 ? 3 : 12;
                case 162:
                    return 2;
                case 163:
                    return 12;
                case 164:
                case 166:
                    return 2;
                case 168:
                    return (i4 == 3 || i4 == 4 || i4 == 5) ? 17 : 3;
                case 169:
                    return 6;
                case 170:
                    return 3;
                case 173:
                    return 2;
                case 174:
                case 175:
                    return 3;
                case 179:
                    return 2;
                case 181:
                case 183:
                    return 5;
                case 184:
                    return 17;
                case 185:
                    return 3;
                case 186:
                case 187:
                case 190:
                    return 12;
                case 192:
                    return 2;
                case 193:
                    return 5;
                case 198:
                    return 17;
                case 200:
                    return 5;
                case 202:
                    return 17;
                case 203:
                    return i4 == 3 ? 9 : 12;
                case 206:
                case 57345:
                    return 2;
                case 208:
                    return 5;
                case 209:
                    return 3;
                case 211:
                    return i4 == 1 ? 9 : 0;
                case 212:
                    return 3;
                case 214:
                case 215:
                    return 12;
                case 216:
                    return (i4 == 2 || i4 == 3) ? 9 : 0;
                case 219:
                case 220:
                    return 5;
                case 221:
                    return 12;
                case 222:
                case 223:
                case 224:
                    return 2;
                case 225:
                    return (i4 == 3 || i4 == 4) ? 17 : 3;
                case 229:
                    return 17;
                case 230:
                    return 2;
                case 231:
                    return 6;
                case 232:
                    return (i4 == 2 || i4 == 3 || i4 == 4) ? 11 : 3;
                case 234:
                    return 12;
                case 236:
                    return 2;
                case 237:
                    return i4 == 3 ? 15 : 0;
                case 238:
                case 240:
                    return 12;
                case i.a.Theme_actionModeShareDrawable /* 241 */:
                    return 2;
                case i.a.Theme_actionModePopupWindowStyle /* 244 */:
                    if (i4 != 2 && i4 != 3) {
                        return 0;
                    }
                case i.a.Theme_actionModeFindDrawable /* 242 */:
                    return 17;
                case i.a.Theme_preferenceFragmentStyle /* 245 */:
                    return 5;
                case i.a.Theme_preferencePanelStyle /* 246 */:
                case i.a.Theme_preferenceHeaderPanelStyle /* 247 */:
                    return 2;
                case 249:
                    return 12;
                case 251:
                    return 3;
                case 252:
                case 254:
                    return 2;
                case 255:
                    if (i4 == 4 || i4 == 5) {
                        return 15;
                    }
                    return (i4 == 6 || i4 == 7) ? 9 : 0;
                case 257:
                    return 5;
                case 260:
                    return 2;
                case 263:
                    return 12;
                case 264:
                    return 5;
                case 265:
                    if (i4 == 6 || i4 == 7 || i4 == 8 || i4 == 12) {
                        return 15;
                    }
                    if (i4 == 20 || i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 26 || i4 == 27 || i4 == 28) {
                        return 9;
                    }
                    return i4 == 5 ? 11 : 0;
                case 266:
                case 267:
                    return 3;
                case i.a.Theme_findOnPageNextDrawable /* 269 */:
                case i.a.Theme_findOnPagePreviousDrawable /* 270 */:
                    return 2;
                case 271:
                    return 5;
                case BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA /* 272 */:
                    if (i4 == 4 || i4 == 5 || i4 == 8) {
                        return 9;
                    }
                    return (i4 == 6 || i4 == 7 || i4 == 8 || i4 == 12) ? 15 : 0;
                case 273:
                    return (i4 == 9 || i4 == 10 || i4 == 11 || i4 == 12) ? 15 : 0;
                case 274:
                case BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA /* 276 */:
                    return 6;
                case 278:
                case 279:
                    return 3;
                case BluetoothClass.Device.COMPUTER_WEARABLE /* 280 */:
                    if (i4 == 5 || i4 == 6 || i4 == 13 || i4 == 14 || i4 == 15 || i4 == 16) {
                        return 15;
                    }
                    if (i4 == 1) {
                        return 17;
                    }
                    return (i4 == 32 || i4 == 34) ? 9 : 0;
                case 281:
                    if (i4 == 1) {
                        return 15;
                    }
                    return i4 == 3 ? 11 : 3;
                case 282:
                    return 2;
                case 287:
                    if (i4 == 2 || i4 == 3) {
                        return 11;
                    }
                    return (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7) ? 15 : 3;
                case 289:
                    return 2;
                case 290:
                    return (i4 == 1 || i4 == 2 || i4 == 8) ? 7 : 0;
                case 291:
                    return i4 == 2 ? 11 : 0;
                case 293:
                case 294:
                case 297:
                    return 2;
                case 298:
                    if (i4 == 6 || i4 == 7 || i4 == 8 || i4 == 5 || i4 == 9 || i4 == 10 || i4 == 11 || i4 == 15) {
                        return 15;
                    }
                    if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 13 || i4 == 35 || i4 == 46 || i4 == 47 || i4 == 60 || i4 == 61 || i4 == 64 || i4 == 73 || i4 == 74) {
                        return 3;
                    }
                    return (i4 == 86 || i4 == 87 || i4 == 88 || i4 == 89 || i4 == 109 || i4 == 110 || i4 == 111 || i4 == 112 || i4 == 113 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 119 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 123 || i4 == 124 || i4 == 125 || i4 == 126 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 130 || i4 == 131 || i4 == 132 || i4 == 133 || i4 == 134 || i4 == 135 || i4 == 136) ? 9 : 12;
                case 300:
                    if (i4 == 1 || i4 == 4) {
                        return 15;
                    }
                    return i4 == 5 ? 9 : 0;
                case 302:
                case 303:
                    return 5;
                case 304:
                case 308:
                    return 2;
                case 309:
                    return 12;
                case 310:
                    return (i4 == 9 || i4 == 10 || i4 == 20 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25) ? 9 : 12;
                case 311:
                    return 3;
                case 313:
                    return 1;
                case 314:
                    return (i4 == 2 || i4 == 3 || i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 34 || i4 == 35) ? 9 : 0;
                case 321:
                    if (i4 == 10) {
                        return 6;
                    }
                case 317:
                case 319:
                case 320:
                    return 2;
                case 322:
                    return 2;
                case 324:
                    return 15;
                case 325:
                    return 5;
                case 326:
                    return 7;
                case 327:
                    return i4 == 4 ? 3 : 0;
                case 328:
                    return 12;
                case 329:
                    if (i4 == 2 || i4 == 3) {
                        return 6;
                    }
                    return (i4 == 5 || i4 == 6) ? 9 : 0;
                case 330:
                case 331:
                    return 12;
                case 333:
                case 131405:
                    return 3;
                case 334:
                    if (i4 == 30) {
                        return 3;
                    }
                    return (i4 == 38 || i4 == 37) ? 18 : 12;
                case 336:
                case 337:
                    return 2;
                case 339:
                    return 12;
                case 341:
                    return 2;
                case 344:
                    return 3;
                case 345:
                    return 2;
                case 347:
                case 348:
                    if (i4 == 13 || i4 == 14) {
                        return 9;
                    }
                    return (i4 == 10 || i4 == 11 || i4 == 12) ? 11 : 6;
                case 349:
                case SpellChecker.WORD_ITERATOR_INTERVAL /* 350 */:
                    return 11;
                case 351:
                case 352:
                    return 2;
                case 353:
                    return 11;
                case 354:
                    return 3;
                case 355:
                    return (i4 == 6 || i4 == 7 || i4 == 8) ? 15 : 3;
                case 356:
                    return 5;
                case 358:
                    if (i4 == 1) {
                        return 9;
                    }
                case 357:
                    return 2;
                case 359:
                    return 3;
                case MediaProperties.HEIGHT_360 /* 360 */:
                    return 2;
                case 362:
                    return 12;
                case 363:
                    return 6;
                case 365:
                    return 4;
                case 366:
                    return 2;
                case 367:
                    return 3;
                case 368:
                    return 2;
                case 369:
                    return 17;
                case 370:
                    return 12;
                case 372:
                    return 2;
                case 374:
                    return (i4 == 14 || i4 == 15 || i4 == 16 || i4 == 17 || i4 == 18) ? 15 : 3;
                case 375:
                case 376:
                    return 1;
                case 378:
                    return 3;
                case 379:
                    return i4 <= 32 ? 15 : 0;
                case 380:
                    return 3;
                case 381:
                    return 4;
                case 384:
                    return 5;
                case 387:
                    return 6;
                case 388:
                    return 3;
                case 392:
                    return 17;
                case 393:
                    return 12;
                case 394:
                case 395:
                    return 2;
                case 396:
                    return (i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5) ? 9 : 0;
                case 397:
                    if (i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 86 || i4 == 89 || i4 == 90 || i4 == 91 || i4 == 92 || i4 == 93 || i4 == 94 || i4 == 95 || i4 == 96 || i4 == 97) {
                        return 3;
                    }
                    return i4 <= 41 ? 15 : 0;
                case 402:
                    return (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9) ? 15 : 0;
                case 403:
                    return 15;
                case UrlQuerySanitizer.IllegalCharacterValueSanitizer.URL_LEGAL /* 404 */:
                    if (i4 == 26 || i4 == 55) {
                        return 11;
                    }
                    return (i4 == 29 || i4 == 36 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 51) ? 9 : 12;
                case Downloads.Impl.STATUS_NOT_ACCEPTABLE /* 406 */:
                    return 7;
                case 407:
                    return 6;
                case 408:
                    return 5;
                case Downloads.Impl.STATUS_LENGTH_REQUIRED /* 411 */:
                    return 2;
                case Downloads.Impl.STATUS_PRECONDITION_FAILED /* 412 */:
                    return (i4 == 2 || i4 == 3) ? 9 : 3;
                case 414:
                    return 7;
                case 415:
                case 416:
                    return 2;
                case 417:
                    return (i4 == 0 || i4 == 1 || i4 == 3 || i4 == 4) ? 17 : 0;
                case 419:
                    return (i4 == 18 || i4 == 19) ? 9 : 2;
                case 420:
                case 421:
                    return 2;
                case 422:
                    return (i4 == 5 || i4 == 6 || i4 == 7) ? 9 : 0;
                case 423:
                    return 17;
                case 424:
                    return 3;
                case 425:
                    return i4 == 3 ? 11 : 7;
                case 427:
                    return 7;
                case 429:
                    if (i4 != 9 && i4 != 10 && i4 != 11 && i4 != 12 && i4 != 13 && i4 != 14 && i4 != 15 && i4 != 16) {
                        return 6;
                    }
                case 428:
                    return 3;
                case 430:
                    return 2;
                case 432:
                    if (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10 || i4 == 11) {
                        return 9;
                    }
                    return i4 == 1 ? 11 : 0;
                case 433:
                    return 17;
                case 434:
                    return 3;
                case 438:
                    if (i4 == 5) {
                        return 6;
                    }
                case 437:
                    return 15;
                case 439:
                    if (i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 9 || i4 == 16 || i4 == 19 || i4 == 22 || i4 == 58 || i4 == 110 || i4 == 159 || i4 == 160 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 213 || i4 == 214 || i4 == 220 || i4 == 222 || i4 == 242 || i4 == 243 || i4 == 244) {
                        return 6;
                    }
                    if (i4 == 10 || i4 == 11 || i4 == 12 || i4 == 13 || i4 == 14 || i4 == 15 || i4 == 20 || i4 == 21 || i4 == 24 || i4 == 26 || i4 == 27 || i4 == 31 || i4 == 32 || i4 == 60 || i4 == 100 || i4 == 121 || i4 == 139 || i4 == 142 || i4 == 176 || i4 == 198 || i4 == 199 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 205 || i4 == 206 || i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219 || i4 == 238 || i4 == 239 || i4 == 245 || i4 == 251 || i4 == 253 || i4 == 254) {
                        return 9;
                    }
                    if (i4 == 55 || i4 == 37 || i4 == 51 || i4 == 135 || i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 235 || i4 == 236 || i4 == 234 || i4 == 237 || i4 == 246 || i4 == 248) {
                        return 3;
                    }
                    if (i4 == 76 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211) {
                        return 7;
                    }
                    if (i4 == 106 || i4 == 131 || i4 == 132) {
                        return 12;
                    }
                    if (i4 == 25 || i4 == 28 || i4 == 29 || i4 == 64 || i4 == 117 || i4 == 118 || i4 == 122 || i4 == 123 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 221 || i4 == 249 || i4 == 250) {
                        return 15;
                    }
                    if (i4 == 30 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 52 || i4 == 81 || i4 == 82 || i4 == 98 || i4 == 124 || i4 == 125 || i4 == 141 || i4 == 193 || i4 == 194 || i4 == 207 || i4 == 233 || i4 == 247) {
                        return 11;
                    }
                    return i4 == 102 ? 14 : 12;
                case 442:
                    return i4 == 1 ? 10 : 2;
                case 443:
                    return (i4 == 117 || i4 == 118) ? 19 : 2;
                case 444:
                    return (i4 == 8 || i4 == 9 || i4 == 10 || i4 == 43 || i4 == 93 || i4 == 99 || i4 == 106 || i4 == 107) ? 19 : 2;
                case 445:
                    return 2;
                case 446:
                    return (i4 == 15 || i4 == 16 || i4 == 17 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 38 || i4 == 39 || i4 == 49 || i4 == 50 || i4 == 51) ? 19 : 2;
                case 447:
                    return (i4 == 4 || i4 == 5 || i4 == 6) ? 12 : 9;
                case 448:
                    return i4 == 0 ? 16 : 3;
                case 450:
                    return 13;
                case 452:
                    if (i4 == 24 || i4 == 25 || i4 == 26 || i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 39 || i4 == 61 || i4 == 62 || i4 == 63 || i4 == 77 || i4 == 78) {
                        return 14;
                    }
                    if (i4 == 55 || i4 == 96 || i4 == 97 || i4 == 115 || i4 == 1 || i4 == 40 || i4 == 133 || i4 == 98 || i4 == 99 || i4 == 101 || i4 == 100 || i4 == 102 || i4 == 95 || i4 == 114 || i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182 || i4 == 212 || i4 == 238) {
                        return 3;
                    }
                    if (i4 == 7 || i4 == 8 || i4 == 9 || i4 == 10 || i4 == 11 || i4 == 23 || i4 == 38 || i4 == 48 || i4 == 49 || i4 == 57 || i4 == 59 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68 || i4 == 69 || i4 == 70 || i4 == 71 || i4 == 79 || i4 == 80 || i4 == 86 || i4 == 87 || i4 == 89 || i4 == 93 || i4 == 94 || i4 == 103 || i4 == 116 || i4 == 121 || i4 == 125 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 141 || i4 == 145 || i4 == 146 || i4 == 158 || i4 == 160 || i4 == 184 || i4 == 185 || i4 == 190 || i4 == 189 || i4 == 200 || i4 == 201 || i4 == 210 || i4 == 216 || i4 == 234 || i4 == 235 || i4 == 239 || i4 == 246 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250 || i4 == 251) {
                        return 9;
                    }
                    if (i4 == 20 || i4 == 147 || i4 == 148 || i4 == 149 || i4 == 150 || i4 == 151 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 156 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 217 || i4 == 218 || i4 == 219) {
                        return 7;
                    }
                    if (i4 == 14 || i4 == 15 || i4 == 22 || i4 == 32 || i4 == 56 || i4 == 75 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 90 || i4 == 92 || i4 == 108 || i4 == 120 || i4 == 122 || i4 == 142 || i4 == 143 || i4 == 144 || i4 == 161 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 174 || i4 == 187 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 208 || i4 == 211 || i4 == 215 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 233 || i4 == 240 || i4 == 252) {
                        return 11;
                    }
                    if (i4 == 197 || i4 == 198 || i4 == 199) {
                        return 14;
                    }
                    if (i4 == 117 || i4 == 118 || i4 == 136 || i4 == 137) {
                        return 20;
                    }
                    if (i4 == 88) {
                        return 17;
                    }
                    return (i4 == 76 || i4 == 138 || i4 == 139 || i4 == 159 || i4 == 172 || i4 == 225 || i4 == 241 || i4 == 242 || i4 == 243 || i4 == 244 || i4 == 245) ? 6 : 12;
                case 453:
                    if (i4 == 1 || i4 == 2 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 204 || i4 == 205 || i4 == 206 || i4 == 207 || i4 == 208 || i4 == 209 || i4 == 210 || i4 == 211 || i4 == 212 || i4 == 213 || i4 == 214 || i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 224 || i4 == 225 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 233 || i4 == 234 || i4 == 235 || i4 == 236 || i4 == 251 || i4 == 252 || i4 == 253 || i4 == 254) {
                        return 20;
                    }
                    if (i4 != 11) {
                        if (!((i4 == 22) | (i4 == 29)) && i4 != 30 && i4 != 31 && i4 != 32 && i4 != 87 && i4 != 88 && i4 != 62 && i4 != 63 && i4 != 64 && i4 != 65 && i4 != 66 && i4 != 67 && i4 != 68 && i4 != 70 && i4 != 71 && i4 != 126 && i4 != 133 && i4 != 184 && i4 != 185 && i4 != 200 && i4 != 201 && i4 != 202 && i4 != 203) {
                            if (i4 >= 149 && i4 <= 189) {
                                return 20;
                            }
                            if (i4 == 190 || i4 == 246 || i4 == 247) {
                                return 14;
                            }
                            if (i4 == 3 || i4 == 8 || i4 == 12 || i4 == 14 || i4 == 15 || i4 == 16 || i4 == 19 || i4 == 20 || i4 == 27 || i4 == 28 || i4 == 37 || i4 == 38 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 74 || i4 == 95 || i4 == 123 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 198 || i4 == 243 || i4 == 244 || i4 == 249 || i4 == 250) {
                                return 9;
                            }
                            if (i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 10 || i4 == 17 || i4 == 18 || i4 == 21 || i4 == 23 || i4 == 24 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 39 || i4 == 40 || i4 == 41 || i4 == 42 || i4 == 77 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 86 || i4 == 121 || i4 == 122 || i4 == 124 || i4 == 125 || i4 == 131 || i4 == 134 || i4 == 135 || i4 == 136 || i4 == 137 || i4 == 140 || i4 == 141 || i4 == 142 || i4 == 147 || i4 == 148 || i4 == 191 || i4 == 192 || i4 == 237 || i4 == 238 || i4 == 239 || i4 == 240 || i4 == 241) {
                                return 11;
                            }
                            if (i4 == 97 || i4 == 98 || i4 == 99 || i4 == 100 || i4 == 101 || i4 == 102 || i4 == 103 || i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 109 || i4 == 110 || i4 == 111 || i4 == 112 || i4 == 113 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 119 || i4 == 120) {
                                return 7;
                            }
                            return (i4 == 55 || i4 == 56 || i4 == 57 || i4 == 58 || i4 == 59 || i4 == 60 || i4 == 61 || i4 == 89 || i4 == 90) ? 6 : 12;
                        }
                    }
                    return 3;
                case 454:
                    if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 28 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172 || i4 == 185 || i4 == 186 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 193 || i4 == 194 || i4 == 195 || i4 == 196 || i4 == 197 || i4 == 198 || i4 == 210 || i4 == 211) {
                        return 20;
                    }
                    if (i4 == 20 || i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 26 || i4 == 27 || i4 == 29 || i4 == 39 || i4 == 40 || i4 == 54 || i4 == 55 || i4 == 58 || i4 == 59 || i4 == 60 || i4 == 61 || i4 == 101 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 138 || i4 == 140 || i4 == 145 || i4 == 146 || i4 == 182 || i4 == 183 || i4 == 212 || i4 == 224 || i4 == 225 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 230 || i4 == 231 || i4 == 232 || i4 == 237 || i4 == 238 || i4 == 240 || i4 == 241 || i4 == 242 || i4 == 243 || i4 == 246 || i4 == 247 || i4 == 248 || i4 == 249 || i4 == 250 || i4 == 251 || i4 == 253 || i4 == 255) {
                        return 11;
                    }
                    if (i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 208 || i4 == 209) {
                        return 7;
                    }
                    if (i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 51 || i4 == 52 || i4 == 53) {
                        return 21;
                    }
                    if (i4 >= 69 && i4 <= 100) {
                        return 21;
                    }
                    if (i4 == 213 || i4 == 9 || i4 == 10) {
                        return 3;
                    }
                    if (i4 == 38 || i4 == 41 || i4 == 56 || i4 == 57 || i4 == 62 || i4 == 63 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68 || i4 == 109 || i4 == 110 || i4 == 111 || i4 == 129 || i4 == 130 || i4 == 131 || i4 == 132 || i4 == 133 || i4 == 134 || i4 == 135 || i4 == 136 || i4 == 139 || i4 == 152 || i4 == 161 || i4 == 162 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 199 || i4 == 200 || i4 == 214 || i4 == 215 || i4 == 216 || i4 == 217 || i4 == 218 || i4 == 219 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 233 || i4 == 234 || i4 == 235 || i4 == 236 || i4 == 239) {
                        return 9;
                    }
                case 455:
                    if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 6 || i4 == 7 || i4 == 8 || i4 == 15 || i4 == 16 || i4 == 17 || i4 == 18 || i4 == 19 || i4 == 20 || i4 == 21 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 36 || i4 == 37 || i4 == 38 || i4 == 40 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 51 || i4 == 52 || i4 == 53 || i4 == 54 || i4 == 55 || i4 == 56 || i4 == 57 || i4 == 62 || i4 == 63 || i4 == 64 || i4 == 70 || i4 == 71 || i4 == 72 || i4 == 73 || i4 == 75 || i4 == 78 || i4 == 79 || i4 == 80 || i4 == 81 || i4 == 82 || i4 == 83 || i4 == 84 || i4 == 97 || i4 == 98 || i4 == 102 || i4 == 115 || i4 == 116 || i4 == 124 || i4 == 125 || i4 == 126 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 147 || i4 == 149 || i4 == 150 || i4 == 151 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 157 || i4 == 159 || i4 == 160 || i4 == 161 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 182 || i4 == 183 || i4 == 187 || i4 == 188 || i4 == 189 || i4 == 190 || i4 == 191 || i4 == 192 || i4 == 193 || i4 == 194 || i4 == 197 || i4 == 198 || i4 == 206 || i4 == 211 || i4 == 212 || i4 == 217 || i4 == 218 || i4 == 220 || i4 == 221 || i4 == 222 || i4 == 223 || i4 == 224 || i4 == 225 || i4 == 226 || i4 == 227 || i4 == 228 || i4 == 229 || i4 == 240 || i4 == 241 || i4 == 242 || i4 == 243 || i4 == 246 || i4 == 247 || i4 == 248) {
                        return 11;
                    }
                    if (i4 == 9 || i4 == 10 || i4 == 66 || i4 == 67 || i4 == 68) {
                        return 7;
                    }
                    if (i4 == 87 || i4 == 181) {
                        return 22;
                    }
                    if (i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 158 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180) {
                        return 14;
                    }
                    if (i4 == 113) {
                        return 23;
                    }
                    if (i4 == 244) {
                        return 6;
                    }
                    if (i4 == 237 || i4 == 238 || i4 == 239 || i4 == 26 || i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 65 || i4 == 138 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142 || i4 == 143 || i4 == 156 || i4 == 230 || i4 == 231) {
                        return 20;
                    }
                    if (i4 == 12 || i4 == 34 || i4 == 35 || i4 == 39 || i4 == 50 || i4 == 69 || i4 == 74 || i4 == 85 || i4 == 86 || i4 == 101 || i4 == 103 || i4 == 111 || i4 == 114 || i4 == 119 || i4 == 133 || i4 == 135 || i4 == 136 || i4 == 148 || i4 == 162 || i4 == 172 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176 || i4 == 184 || i4 == 185 || i4 == 186 || i4 == 199 || i4 == 200 || i4 == 201 || i4 == 202 || i4 == 203 || i4 == 204 || i4 == 207 || i4 == 208 || i4 == 209 || i4 == 210 || i4 == 215 || i4 == 216 || i4 == 232 || i4 == 233 || i4 == 234 || i4 == 235 || i4 == 236 || i4 == 251 || i4 == 252 || i4 == 254) {
                        return 9;
                    }
                    if (i4 == 13 || i4 == 25 || i4 == 44 || i4 == 45 || i4 == 58 || i4 == 59 || i4 == 60 || i4 == 61 || i4 == 76 || i4 == 77 || i4 == 100 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 123 || i4 == 195 || i4 == 196 || i4 == 249 || i4 == 250) {
                        return 3;
                    }
                    if (i4 == 219) {
                        return 17;
                    }
                case 456:
                    if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 10 || i4 == 26 || i4 == 83 || i4 == 84 || i4 == 85 || i4 == 87 || i4 == 88 || i4 == 89 || i4 == 102 || i4 == 103 || i4 == 104 || i4 == 105 || i4 == 106 || i4 == 107 || i4 == 108 || i4 == 114 || i4 == 115 || i4 == 116 || i4 == 117 || i4 == 118 || i4 == 119 || i4 == 130 || i4 == 132 || i4 == 133 || i4 == 134) {
                        return 9;
                    }
                    if (i4 == 11 || i4 == 12 || i4 == 22 || i4 == 23 || i4 == 24 || i4 == 25 || i4 == 59 || i4 == 60 || i4 == 61 || i4 == 62 || i4 == 63 || i4 == 64 || i4 == 65 || i4 == 66 || i4 == 67 || i4 == 68 || i4 == 69 || i4 == 70 || i4 == 71 || i4 == 72 || i4 == 73 || i4 == 74 || i4 == 75 || i4 == 76 || i4 == 77 || i4 == 81 || i4 == 82 || i4 == 86 || i4 == 96 || i4 == 97 || i4 == 98 || i4 == 99 || i4 == 109 || i4 == 120 || i4 == 121 || i4 == 122 || i4 == 127 || i4 == 128 || i4 == 129 || i4 == 131 || i4 == 147 || i4 == 148 || i4 == 149 || i4 == 152 || i4 == 153 || i4 == 154 || i4 == 155 || i4 == 157 || i4 == 158 || i4 == 159 || i4 == 160 || i4 == 161 || i4 == 162 || i4 == 163 || i4 == 164 || i4 == 165 || i4 == 166 || i4 == 167 || i4 == 168 || i4 == 169 || i4 == 170 || i4 == 171 || i4 == 172 || i4 == 173 || i4 == 174 || i4 == 175 || i4 == 176 || i4 == 177 || i4 == 178 || i4 == 179 || i4 == 180 || i4 == 181 || i4 == 182) {
                        return 11;
                    }
                    if (i4 == 13 || i4 == 14 || i4 == 16 || i4 == 17 || i4 == 19 || i4 == 79 || i4 == 92 || i4 == 93 || i4 == 94 || i4 == 95 || i4 == 110 || i4 == 111 || i4 == 112 || i4 == 113 || i4 == 139 || i4 == 140 || i4 == 141 || i4 == 142 || i4 == 143 || i4 == 144 || i4 == 145 || i4 == 146 || i4 == 150 || i4 == 151 || i4 == 156 || i4 == 183) {
                        return 3;
                    }
                    if (i4 == 135 || i4 == 136 || i4 == 137 || i4 == 138) {
                        return 20;
                    }
                    if (i4 == 15 || i4 == 18 || i4 == 20 || i4 == 21 || i4 == 56) {
                        return 9;
                    }
                    if (i4 == 27 || i4 == 28 || i4 == 29 || i4 == 30 || i4 == 31 || i4 == 32 || i4 == 33 || i4 == 34 || i4 == 35 || i4 == 36 || i4 == 37 || i4 == 38 || i4 == 39 || i4 == 40 || i4 == 41 || i4 == 42 || i4 == 43 || i4 == 44 || i4 == 45 || i4 == 46 || i4 == 47 || i4 == 48 || i4 == 49 || i4 == 50 || i4 == 51 || i4 == 52) {
                        return 14;
                    }
                    if (i4 == 53 || i4 == 54 || i4 == 55 || i4 == 90) {
                        return 6;
                    }
                    if (i4 == 57 || i4 == 58) {
                        return 7;
                    }
                    if (i4 == 91) {
                        return 22;
                    }
                    return 0;
                case View.PFLAG2_TEXT_ALIGNMENT_MASK /* 57344 */:
                    return 8;
                case 262462:
                case 3276820:
                    return 3;
                case 6422589:
                    return 12;
                default:
                    switch (i3) {
                        case 19:
                        case 20:
                            return 3;
                        case 21:
                            return 2;
                        case 22:
                            return 3;
                        case 23:
                            return 2;
                        case 24:
                            return i4 == 1 ? 12 : 3;
                        case 25:
                            return (i4 == 6 || i4 == 33 || i4 == 36 || i4 == 37) ? 6 : 3;
                        default:
                            switch (i3) {
                                case 29:
                                case 30:
                                    return 2;
                                case 31:
                                    return 3;
                                default:
                                    switch (i3) {
                                        case 36:
                                        case 37:
                                        case 38:
                                            break;
                                        default:
                                            switch (i3) {
                                                case 40:
                                                    if (i4 == 5) {
                                                        return 9;
                                                    }
                                                    return (i4 == 1 || i4 == 2 || i4 == 3) ? 17 : 3;
                                                case 41:
                                                    return i4 == 1 ? 15 : 3;
                                                case 42:
                                                case 43:
                                                    return 2;
                                                case 44:
                                                    return 3;
                                                case 45:
                                                case 46:
                                                    return 2;
                                                case 47:
                                                    return i4 == 3 ? 12 : 3;
                                                case 48:
                                                    return (i4 == 2 || i4 == 3) ? 15 : 3;
                                                default:
                                                    switch (i3) {
                                                        default:
                                                            switch (i3) {
                                                                case 75:
                                                                case 76:
                                                                    break;
                                                                case 77:
                                                                    return (i4 == 2 || i4 == 3 || i4 == 4) ? 15 : 3;
                                                                case 78:
                                                                    return 5;
                                                                default:
                                                                    return 0;
                                                            }
                                                        case 64:
                                                        case 65:
                                                        case 66:
                                                        case 67:
                                                            return 2;
                                                    }
                                                case 49:
                                                    return 2;
                                            }
                                            break;
                                    }
                                case 32:
                                case 33:
                                case 34:
                                    return 2;
                            }
                            break;
                    }
                    break;
            }
        }
        return 2;
    }

    public static a e(int i2) {
        switch (i2) {
            case 1:
                return new u();
            case 2:
                return new w();
            case 3:
                return new z();
            case 4:
                return new f();
            case 5:
                return new l();
            case 6:
                return new k();
            case 7:
                return new y();
            case 8:
                return new q();
            case 9:
                return new r();
            case 10:
                return new m();
            case 11:
                return new o();
            case 12:
                return new s();
            case 13:
                return new b0();
            case 14:
                return new a0();
            case 15:
                return new g();
            case 16:
                return new p();
            case 17:
                return new i();
            case 18:
                return new j();
            case 19:
                return new x();
            case 20:
                return new v();
            case 21:
                return new t();
            case 22:
                return new h();
            case 23:
                return new n();
            default:
                return new a();
        }
    }

    public static void f() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
        e0Var.i(z.k.b(1, 86, 17));
    }

    public static void g() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
        e0Var.i(z.k.b(1, 86, 18));
    }

    public static void h(Runnable runnable) {
        j0.f16912g.d(runnable);
    }

    public static void i(Runnable runnable) {
        j0.f16915j.d(runnable);
    }

    public static void j(int i2, int... iArr) {
        boolean z2 = true;
        if (iArr.length == 1) {
            int[] iArr2 = b.f13171d;
            if (s0.h(iArr2, i2)) {
                if (iArr2[i2] != iArr[0]) {
                    iArr2[i2] = iArr[0];
                } else {
                    z2 = false;
                }
            }
        }
        if (z2) {
            k(i2, iArr, null, null);
        }
    }

    public static void k(int i2, int[] iArr, float[] fArr, String[] strArr) {
        e eVarZ2 = e.Z2();
        if (eVarZ2 != null) {
            eVarZ2.H0(i2, iArr, fArr, strArr);
        }
    }

    public static void l(byte... bArr) {
        int length = bArr.length + 1;
        int[] iArr = new int[length];
        iArr[0] = 233;
        for (int i2 = 1; i2 < length; i2++) {
            iArr[i2] = bArr[i2 - 1] & 255;
        }
        z.a.f18151b.i(z.k.b(iArr));
    }

    public static void m(byte[] bArr) {
        if (nt.f8648i == 1) {
            l(bArr);
        } else {
            z.a.f18151b.i(bArr);
        }
    }
}
