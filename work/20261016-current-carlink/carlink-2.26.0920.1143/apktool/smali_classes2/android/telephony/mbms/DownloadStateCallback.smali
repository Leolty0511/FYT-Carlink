.class public Landroid/telephony/mbms/DownloadStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/DownloadStateCallback$FilterFlag;
    }
.end annotation


# static fields
.field public static final ALL_UPDATES:I = 0x0

.field public static final PROGRESS_UPDATES:I = 0x1

.field public static final STATE_UPDATES:I = 0x2


# instance fields
.field private final mCallbackFilterFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return-void
.end method


# virtual methods
.method public getCallbackFilterFlags()I
    .locals 1

    iget v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    return v0
.end method

.method public final isFilterFlagSet(I)Z
    .locals 2

    iget v0, p0, Landroid/telephony/mbms/DownloadStateCallback;->mCallbackFilterFlags:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/2addr p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onProgressUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;IIII)V
    .locals 0

    return-void
.end method

.method public onStateUpdated(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V
    .locals 0

    return-void
.end method
