.class public final Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestThrottledException"
.end annotation


# instance fields
.field private mTimeoutMs:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getTimeoutMs()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->mTimeoutMs:I

    return v0
.end method
