.class public Lcom/android/internal/os/KernelWakelockStats$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelWakelockStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public mCount:I

.field public mTotalTime:J

.field public mVersion:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    .line 9
    .line 10
    return-void
.end method
