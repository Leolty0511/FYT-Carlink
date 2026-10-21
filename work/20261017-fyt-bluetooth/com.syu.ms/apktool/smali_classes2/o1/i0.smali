.class public Lo1/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/syu/jni/JniSpectrum;->open(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo1/i0;->a:I

    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lo1/i0;->a:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/syu/jni/JniSpectrum;->read(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
