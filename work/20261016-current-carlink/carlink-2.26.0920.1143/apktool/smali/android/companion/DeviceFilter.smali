.class public interface abstract Landroid/companion/DeviceFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DeviceFilter$MediumType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final MEDIUM_TYPE_BLUETOOTH:I = 0x0

.field public static final MEDIUM_TYPE_BLUETOOTH_LE:I = 0x1

.field public static final MEDIUM_TYPE_WIFI:I = 0x2


# virtual methods
.method public abstract getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getMediumType()I
.end method

.method public abstract matches(Landroid/os/Parcelable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method
