package android.view;

import android.content.ClipData;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.MergedConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public interface IWindowSession extends IInterface {

    public static abstract class Stub extends Binder implements IWindowSession {
        private static final String DESCRIPTOR = "android.view.IWindowSession";
        static final int TRANSACTION_add = 1;
        static final int TRANSACTION_addToDisplay = 2;
        static final int TRANSACTION_addToDisplayWithoutInputChannel = 4;
        static final int TRANSACTION_addWithoutInputChannel = 3;
        static final int TRANSACTION_canNavigationBarMove = 34;
        static final int TRANSACTION_cancelDragAndDrop = 19;
        static final int TRANSACTION_dragRecipientEntered = 20;
        static final int TRANSACTION_dragRecipientExited = 21;
        static final int TRANSACTION_finishDrawing = 12;
        static final int TRANSACTION_getDisplayFrame = 11;
        static final int TRANSACTION_getInTouchMode = 14;
        static final int TRANSACTION_getWindowId = 28;
        static final int TRANSACTION_isKeyguardShowingAndNotOccluded = 32;
        static final int TRANSACTION_isNavigationBarShowing = 33;
        static final int TRANSACTION_onRectangleOnScreenRequested = 27;
        static final int TRANSACTION_outOfMemory = 8;
        static final int TRANSACTION_performDrag = 17;
        static final int TRANSACTION_performHapticFeedback = 15;
        static final int TRANSACTION_pokeDrawLock = 29;
        static final int TRANSACTION_prepareDrag = 16;
        static final int TRANSACTION_prepareToReplaceWindows = 7;
        static final int TRANSACTION_relayout = 6;
        static final int TRANSACTION_remove = 5;
        static final int TRANSACTION_reportDropResult = 18;
        static final int TRANSACTION_sendWallpaperCommand = 25;
        static final int TRANSACTION_setInTouchMode = 13;
        static final int TRANSACTION_setInsets = 10;
        static final int TRANSACTION_setTransparentRegion = 9;
        static final int TRANSACTION_setWallpaperDisplayOffset = 24;
        static final int TRANSACTION_setWallpaperPosition = 22;
        static final int TRANSACTION_startMovingTask = 30;
        static final int TRANSACTION_updatePointerIcon = 31;
        static final int TRANSACTION_wallpaperCommandComplete = 26;
        static final int TRANSACTION_wallpaperOffsetsComplete = 23;

        public static class Proxy implements IWindowSession {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.view.IWindowSession
            public int add(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, Rect rect, Rect rect2, InputChannel inputChannel) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (layoutParams != null) {
                        parcelObtain.writeInt(1);
                        layoutParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i4 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        rect2.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        inputChannel.readFromParcel(parcelObtain2);
                    }
                    return i4;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public int addToDisplay(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, Rect rect, Rect rect2, Rect rect3, InputChannel inputChannel) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (layoutParams != null) {
                        parcelObtain.writeInt(1);
                        layoutParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i5 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        rect2.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        rect3.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        inputChannel.readFromParcel(parcelObtain2);
                    }
                    return i5;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public int addToDisplayWithoutInputChannel(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, Rect rect, Rect rect2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (layoutParams != null) {
                        parcelObtain.writeInt(1);
                        layoutParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i5 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        rect2.readFromParcel(parcelObtain2);
                    }
                    return i5;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public int addWithoutInputChannel(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, Rect rect, Rect rect2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (layoutParams != null) {
                        parcelObtain.writeInt(1);
                        layoutParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    int i4 = parcelObtain2.readInt();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        rect2.readFromParcel(parcelObtain2);
                    }
                    return i4;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.view.IWindowSession
            public boolean canNavigationBarMove() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void cancelDragAndDrop(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void dragRecipientEntered(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void dragRecipientExited(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void finishDrawing(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void getDisplayFrame(IWindow iWindow, Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        rect.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean getInTouchMode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.view.IWindowSession
            public IWindowId getWindowId(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return IWindowId.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean isKeyguardShowingAndNotOccluded() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean isNavigationBarShowing() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void onRectangleOnScreenRequested(IBinder iBinder, Rect rect) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean outOfMemory(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean performDrag(IWindow iWindow, IBinder iBinder, int i2, float f2, float f3, float f4, float f5, ClipData clipData) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    parcelObtain.writeFloat(f4);
                    parcelObtain.writeFloat(f5);
                    if (clipData != null) {
                        parcelObtain.writeInt(1);
                        clipData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean performHapticFeedback(IWindow iWindow, int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void pokeDrawLock(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public IBinder prepareDrag(IWindow iWindow, int i2, int i3, int i4, Surface surface) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IBinder strongBinder = parcelObtain2.readStrongBinder();
                    if (parcelObtain2.readInt() != 0) {
                        surface.readFromParcel(parcelObtain2);
                    }
                    return strongBinder;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void prepareToReplaceWindows(IBinder iBinder, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public int relayout(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, int i5, int i6, Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, Rect rect7, MergedConfiguration mergedConfiguration, Surface surface) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (layoutParams != null) {
                        parcelObtain.writeInt(1);
                        layoutParams.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeInt(i6);
                    try {
                        this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        int i7 = parcelObtain2.readInt();
                        if (parcelObtain2.readInt() != 0) {
                            rect.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect2.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect3.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect4.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect5.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect6.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            rect7.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            mergedConfiguration.readFromParcel(parcelObtain2);
                        }
                        if (parcelObtain2.readInt() != 0) {
                            surface.readFromParcel(parcelObtain2);
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return i7;
                    } catch (Throwable th) {
                        th = th;
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            @Override // android.view.IWindowSession
            public void remove(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void reportDropResult(IWindow iWindow, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public Bundle sendWallpaperCommand(IBinder iBinder, String str, int i2, int i3, int i4, Bundle bundle, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    int i5 = 1;
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i5 = 0;
                    }
                    parcelObtain.writeInt(i5);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void setInTouchMode(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void setInsets(IWindow iWindow, int i2, Rect rect, Rect rect2, Region region) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeInt(i2);
                    if (rect != null) {
                        parcelObtain.writeInt(1);
                        rect.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (rect2 != null) {
                        parcelObtain.writeInt(1);
                        rect2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (region != null) {
                        parcelObtain.writeInt(1);
                        region.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void setTransparentRegion(IWindow iWindow, Region region) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    if (region != null) {
                        parcelObtain.writeInt(1);
                        region.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void setWallpaperDisplayOffset(IBinder iBinder, int i2, int i3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void setWallpaperPosition(IBinder iBinder, float f2, float f3, float f4, float f5) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    parcelObtain.writeFloat(f4);
                    parcelObtain.writeFloat(f5);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public boolean startMovingTask(IWindow iWindow, float f2, float f3) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeFloat(f3);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void updatePointerIcon(IWindow iWindow) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWindow != null ? iWindow.asBinder() : null);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void wallpaperCommandComplete(IBinder iBinder, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.view.IWindowSession
            public void wallpaperOffsetsComplete(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWindowSession asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWindowSession)) ? new Proxy(iBinder) : (IWindowSession) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i4 = parcel.readInt();
                    WindowManager.LayoutParams layoutParamsCreateFromParcel = parcel.readInt() != 0 ? WindowManager.LayoutParams.CREATOR.createFromParcel(parcel) : null;
                    int i5 = parcel.readInt();
                    Rect rect = new Rect();
                    Rect rect2 = new Rect();
                    InputChannel inputChannel = new InputChannel();
                    int iAdd = add(iWindowAsInterface, i4, layoutParamsCreateFromParcel, i5, rect, rect2, inputChannel);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAdd);
                    parcel2.writeInt(1);
                    rect.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect2.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    inputChannel.writeToParcel(parcel2, 1);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface2 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i6 = parcel.readInt();
                    WindowManager.LayoutParams layoutParamsCreateFromParcel2 = parcel.readInt() != 0 ? WindowManager.LayoutParams.CREATOR.createFromParcel(parcel) : null;
                    int i7 = parcel.readInt();
                    int i8 = parcel.readInt();
                    Rect rect3 = new Rect();
                    Rect rect4 = new Rect();
                    Rect rect5 = new Rect();
                    InputChannel inputChannel2 = new InputChannel();
                    int iAddToDisplay = addToDisplay(iWindowAsInterface2, i6, layoutParamsCreateFromParcel2, i7, i8, rect3, rect4, rect5, inputChannel2);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddToDisplay);
                    parcel2.writeInt(1);
                    rect3.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect4.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect5.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    inputChannel2.writeToParcel(parcel2, 1);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface3 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i9 = parcel.readInt();
                    WindowManager.LayoutParams layoutParamsCreateFromParcel3 = parcel.readInt() != 0 ? WindowManager.LayoutParams.CREATOR.createFromParcel(parcel) : null;
                    int i10 = parcel.readInt();
                    Rect rect6 = new Rect();
                    Rect rect7 = new Rect();
                    int iAddWithoutInputChannel = addWithoutInputChannel(iWindowAsInterface3, i9, layoutParamsCreateFromParcel3, i10, rect6, rect7);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddWithoutInputChannel);
                    parcel2.writeInt(1);
                    rect6.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect7.writeToParcel(parcel2, 1);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface4 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i11 = parcel.readInt();
                    WindowManager.LayoutParams layoutParamsCreateFromParcel4 = parcel.readInt() != 0 ? WindowManager.LayoutParams.CREATOR.createFromParcel(parcel) : null;
                    int i12 = parcel.readInt();
                    int i13 = parcel.readInt();
                    Rect rect8 = new Rect();
                    Rect rect9 = new Rect();
                    int iAddToDisplayWithoutInputChannel = addToDisplayWithoutInputChannel(iWindowAsInterface4, i11, layoutParamsCreateFromParcel4, i12, i13, rect8, rect9);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddToDisplayWithoutInputChannel);
                    parcel2.writeInt(1);
                    rect8.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect9.writeToParcel(parcel2, 1);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    remove(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface5 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i14 = parcel.readInt();
                    WindowManager.LayoutParams layoutParamsCreateFromParcel5 = parcel.readInt() != 0 ? WindowManager.LayoutParams.CREATOR.createFromParcel(parcel) : null;
                    int i15 = parcel.readInt();
                    int i16 = parcel.readInt();
                    int i17 = parcel.readInt();
                    int i18 = parcel.readInt();
                    Rect rect10 = new Rect();
                    Rect rect11 = new Rect();
                    Rect rect12 = new Rect();
                    Rect rect13 = new Rect();
                    Rect rect14 = new Rect();
                    Rect rect15 = new Rect();
                    Rect rect16 = new Rect();
                    MergedConfiguration mergedConfiguration = new MergedConfiguration();
                    Surface surface = new Surface();
                    int iRelayout = relayout(iWindowAsInterface5, i14, layoutParamsCreateFromParcel5, i15, i16, i17, i18, rect10, rect11, rect12, rect13, rect14, rect15, rect16, mergedConfiguration, surface);
                    parcel2.writeNoException();
                    parcel2.writeInt(iRelayout);
                    parcel2.writeInt(1);
                    rect10.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect11.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect12.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect13.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect14.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect15.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    rect16.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    mergedConfiguration.writeToParcel(parcel2, 1);
                    parcel2.writeInt(1);
                    surface.writeToParcel(parcel2, 1);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareToReplaceWindows(parcel.readStrongBinder(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOutOfMemory = outOfMemory(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zOutOfMemory ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setTransparentRegion(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? Region.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInsets(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Region.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface6 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    Rect rect17 = new Rect();
                    getDisplayFrame(iWindowAsInterface6, rect17);
                    parcel2.writeNoException();
                    parcel2.writeInt(1);
                    rect17.writeToParcel(parcel2, 1);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    finishDrawing(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInTouchMode(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean inTouchMode = getInTouchMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(inTouchMode ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformHapticFeedback = performHapticFeedback(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformHapticFeedback ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindow iWindowAsInterface7 = IWindow.Stub.asInterface(parcel.readStrongBinder());
                    int i19 = parcel.readInt();
                    int i20 = parcel.readInt();
                    int i21 = parcel.readInt();
                    Surface surface2 = new Surface();
                    IBinder iBinderPrepareDrag = prepareDrag(iWindowAsInterface7, i19, i20, i21, surface2);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iBinderPrepareDrag);
                    parcel2.writeInt(1);
                    surface2.writeToParcel(parcel2, 1);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPerformDrag = performDrag(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readStrongBinder(), parcel.readInt(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readInt() != 0 ? ClipData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zPerformDrag ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    reportDropResult(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelDragAndDrop(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    dragRecipientEntered(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    dragRecipientExited(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWallpaperPosition(parcel.readStrongBinder(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    wallpaperOffsetsComplete(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWallpaperDisplayOffset(parcel.readStrongBinder(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle bundleSendWallpaperCommand = sendWallpaperCommand(parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    if (bundleSendWallpaperCommand != null) {
                        parcel2.writeInt(1);
                        bundleSendWallpaperCommand.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    wallpaperCommandComplete(parcel.readStrongBinder(), parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRectangleOnScreenRequested(parcel.readStrongBinder(), parcel.readInt() != 0 ? Rect.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWindowId windowId = getWindowId(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(windowId != null ? windowId.asBinder() : null);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    pokeDrawLock(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartMovingTask = startMovingTask(IWindow.Stub.asInterface(parcel.readStrongBinder()), parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartMovingTask ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePointerIcon(IWindow.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsKeyguardShowingAndNotOccluded = isKeyguardShowingAndNotOccluded();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsKeyguardShowingAndNotOccluded ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNavigationBarShowing = isNavigationBarShowing();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNavigationBarShowing ? 1 : 0);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCanNavigationBarMove = canNavigationBarMove();
                    parcel2.writeNoException();
                    parcel2.writeInt(zCanNavigationBarMove ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    int add(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, Rect rect, Rect rect2, InputChannel inputChannel);

    int addToDisplay(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, Rect rect, Rect rect2, Rect rect3, InputChannel inputChannel);

    int addToDisplayWithoutInputChannel(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, Rect rect, Rect rect2);

    int addWithoutInputChannel(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, Rect rect, Rect rect2);

    boolean canNavigationBarMove();

    void cancelDragAndDrop(IBinder iBinder);

    void dragRecipientEntered(IWindow iWindow);

    void dragRecipientExited(IWindow iWindow);

    void finishDrawing(IWindow iWindow);

    void getDisplayFrame(IWindow iWindow, Rect rect);

    boolean getInTouchMode();

    IWindowId getWindowId(IBinder iBinder);

    boolean isKeyguardShowingAndNotOccluded();

    boolean isNavigationBarShowing();

    void onRectangleOnScreenRequested(IBinder iBinder, Rect rect);

    boolean outOfMemory(IWindow iWindow);

    boolean performDrag(IWindow iWindow, IBinder iBinder, int i2, float f2, float f3, float f4, float f5, ClipData clipData);

    boolean performHapticFeedback(IWindow iWindow, int i2, boolean z2);

    void pokeDrawLock(IBinder iBinder);

    IBinder prepareDrag(IWindow iWindow, int i2, int i3, int i4, Surface surface);

    void prepareToReplaceWindows(IBinder iBinder, boolean z2);

    int relayout(IWindow iWindow, int i2, WindowManager.LayoutParams layoutParams, int i3, int i4, int i5, int i6, Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, Rect rect7, MergedConfiguration mergedConfiguration, Surface surface);

    void remove(IWindow iWindow);

    void reportDropResult(IWindow iWindow, boolean z2);

    Bundle sendWallpaperCommand(IBinder iBinder, String str, int i2, int i3, int i4, Bundle bundle, boolean z2);

    void setInTouchMode(boolean z2);

    void setInsets(IWindow iWindow, int i2, Rect rect, Rect rect2, Region region);

    void setTransparentRegion(IWindow iWindow, Region region);

    void setWallpaperDisplayOffset(IBinder iBinder, int i2, int i3);

    void setWallpaperPosition(IBinder iBinder, float f2, float f3, float f4, float f5);

    boolean startMovingTask(IWindow iWindow, float f2, float f3);

    void updatePointerIcon(IWindow iWindow);

    void wallpaperCommandComplete(IBinder iBinder, Bundle bundle);

    void wallpaperOffsetsComplete(IBinder iBinder);
}
