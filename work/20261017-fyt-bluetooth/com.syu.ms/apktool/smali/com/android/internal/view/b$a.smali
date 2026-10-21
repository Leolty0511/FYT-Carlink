.class public abstract Lcom/android/internal/view/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/b$a$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputContext"

.field public static final TRANSACTION_beginBatchEdit:I = 0xe

.field public static final TRANSACTION_clearMetaKeyStates:I = 0x12

.field public static final TRANSACTION_commitCompletion:I = 0x9

.field public static final TRANSACTION_commitCorrection:I = 0xa

.field public static final TRANSACTION_commitText:I = 0x8

.field public static final TRANSACTION_deleteSurroundingText:I = 0x5

.field public static final TRANSACTION_endBatchEdit:I = 0xf

.field public static final TRANSACTION_finishComposingText:I = 0x7

.field public static final TRANSACTION_getCursorCapsMode:I = 0x3

.field public static final TRANSACTION_getExtractedText:I = 0x4

.field public static final TRANSACTION_getSelectedText:I = 0x15

.field public static final TRANSACTION_getTextAfterCursor:I = 0x2

.field public static final TRANSACTION_getTextBeforeCursor:I = 0x1

.field public static final TRANSACTION_performContextMenuAction:I = 0xd

.field public static final TRANSACTION_performEditorAction:I = 0xc

.field public static final TRANSACTION_performPrivateCommand:I = 0x13

.field public static final TRANSACTION_reportFullscreenMode:I = 0x10

.field public static final TRANSACTION_sendKeyEvent:I = 0x11

.field public static final TRANSACTION_setComposingRegion:I = 0x14

.field public static final TRANSACTION_setComposingText:I = 0x6

.field public static final TRANSACTION_setSelection:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.view.IInputContext"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.internal.view.IInputContext"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/android/internal/view/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/android/internal/view/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/android/internal/view/b$a$a;

    invoke-direct {v0, p0}, Lcom/android/internal/view/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const-string v1, "com.android.internal.view.IInputContext"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/view/c$a;->J2(Landroid/os/IBinder;)Lcom/android/internal/view/c;

    move-result-object p2

    .line 6
    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/view/b;->getSelectedText(IILcom/android/internal/view/c;)V

    return v2

    .line 7
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 10
    invoke-interface {p0, p1, p2}, Lcom/android/internal/view/b;->setComposingRegion(II)V

    return v2

    .line 11
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 14
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 15
    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/android/internal/view/b;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return v2

    .line 16
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 18
    invoke-interface {p0, p1}, Lcom/android/internal/view/b;->clearMetaKeyStates(I)V

    return v2

    .line 19
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    sget-object p1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 22
    :cond_1
    invoke-interface {p0, v0}, Lcom/android/internal/view/b;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return v2

    .line 23
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/internal/view/b;->reportFullscreenMode(Z)V

    return v2

    .line 26
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-interface {p0}, Lcom/android/internal/view/b;->endBatchEdit()V

    return v2

    .line 28
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lcom/android/internal/view/b;->beginBatchEdit()V

    return v2

    .line 30
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 32
    invoke-interface {p0, p1}, Lcom/android/internal/view/b;->performContextMenuAction(I)V

    return v2

    .line 33
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 35
    invoke-interface {p0, p1}, Lcom/android/internal/view/b;->performEditorAction(I)V

    return v2

    .line 36
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 39
    invoke-interface {p0, p1, p2}, Lcom/android/internal/view/b;->setSelection(II)V

    return v2

    .line 40
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    sget-object p1, Landroid/view/inputmethod/CorrectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/CorrectionInfo;

    .line 43
    :cond_3
    invoke-interface {p0, v0}, Lcom/android/internal/view/b;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    return v2

    .line 44
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    sget-object p1, Landroid/view/inputmethod/CompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/CompletionInfo;

    .line 47
    :cond_4
    invoke-interface {p0, v0}, Lcom/android/internal/view/b;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    return v2

    .line 48
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 50
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 51
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    invoke-interface {p0, v0, p1}, Lcom/android/internal/view/b;->commitText(Ljava/lang/CharSequence;I)V

    return v2

    .line 53
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lcom/android/internal/view/b;->finishComposingText()V

    return v2

    .line 55
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 57
    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 58
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 59
    invoke-interface {p0, v0, p1}, Lcom/android/internal/view/b;->setComposingText(Ljava/lang/CharSequence;I)V

    return v2

    .line 60
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 63
    invoke-interface {p0, p1, p2}, Lcom/android/internal/view/b;->deleteSurroundingText(II)V

    return v2

    .line 64
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 66
    sget-object p1, Landroid/view/inputmethod/ExtractedTextRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/ExtractedTextRequest;

    .line 67
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/view/c$a;->J2(Landroid/os/IBinder;)Lcom/android/internal/view/c;

    move-result-object p2

    .line 70
    invoke-interface {p0, v0, p1, p3, p2}, Lcom/android/internal/view/b;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/c;)V

    return v2

    .line 71
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/view/c$a;->J2(Landroid/os/IBinder;)Lcom/android/internal/view/c;

    move-result-object p2

    .line 75
    invoke-interface {p0, p1, p3, p2}, Lcom/android/internal/view/b;->getCursorCapsMode(IILcom/android/internal/view/c;)V

    return v2

    .line 76
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/view/c$a;->J2(Landroid/os/IBinder;)Lcom/android/internal/view/c;

    move-result-object p2

    .line 81
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/internal/view/b;->getTextAfterCursor(IIILcom/android/internal/view/c;)V

    return v2

    .line 82
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/view/c$a;->J2(Landroid/os/IBinder;)Lcom/android/internal/view/c;

    move-result-object p2

    .line 87
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/android/internal/view/b;->getTextBeforeCursor(IIILcom/android/internal/view/c;)V

    return v2

    .line 88
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
