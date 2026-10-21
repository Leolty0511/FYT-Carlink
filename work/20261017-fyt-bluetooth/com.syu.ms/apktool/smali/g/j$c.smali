.class public Lg/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public final synthetic b:Lg/j;


# direct methods
.method public constructor <init>(Lg/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/j$c;->b:Lg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lg/j$c;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/j$c;->b:Lg/j;

    iget v0, v0, Lg/j;->n0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa2

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ToolsJni;->getUsbIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lg/j$c;->a:Ljava/lang/Integer;

    const-string p1, "persist.lsec7731.DVRHdPort"

    .line 3
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    new-array v1, v1, [I

    aput p1, v1, v2

    .line 5
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lg/j$c;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    new-array p1, v1, [I

    .line 8
    iget-object v1, p0, Lg/j$c;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v2

    invoke-static {v0, p1}, Lu0/d;->I3(I[I)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lg/j$c;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 10
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    :cond_2
    :goto_0
    return-void
.end method
