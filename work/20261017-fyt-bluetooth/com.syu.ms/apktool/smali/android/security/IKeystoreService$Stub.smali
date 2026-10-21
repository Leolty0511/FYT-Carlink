.class public abstract Landroid/security/IKeystoreService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/security/IKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.security.keystore"

.field public static final TRANSACTION_clear_uid:I = 0x17

.field public static final TRANSACTION_del:I = 0x4

.field public static final TRANSACTION_del_key:I = 0x11

.field public static final TRANSACTION_duplicate:I = 0x15

.field public static final TRANSACTION_exist:I = 0x5

.field public static final TRANSACTION_generate:I = 0xc

.field public static final TRANSACTION_get:I = 0x2

.field public static final TRANSACTION_get_pubkey:I = 0x10

.field public static final TRANSACTION_getmtime:I = 0x14

.field public static final TRANSACTION_grant:I = 0x12

.field public static final TRANSACTION_import:I = 0xd

.field public static final TRANSACTION_insert:I = 0x3

.field public static final TRANSACTION_is_hardware_backed:I = 0x16

.field public static final TRANSACTION_lock:I = 0x9

.field public static final TRANSACTION_password:I = 0x8

.field public static final TRANSACTION_reset:I = 0x7

.field public static final TRANSACTION_saw:I = 0x6

.field public static final TRANSACTION_sign:I = 0xe

.field public static final TRANSACTION_test:I = 0x1

.field public static final TRANSACTION_ungrant:I = 0x13

.field public static final TRANSACTION_unlock:I = 0xa

.field public static final TRANSACTION_verify:I = 0xf

.field public static final TRANSACTION_zero:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.security.keystore"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.security.keystore"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/security/IKeystoreService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/security/IKeystoreService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/security/IKeystoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/IKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "android.security.keystore"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Landroid/security/IKeystoreService;->test()I

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
