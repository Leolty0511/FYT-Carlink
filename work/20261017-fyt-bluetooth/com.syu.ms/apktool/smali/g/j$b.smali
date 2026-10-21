.class public Lg/j$b;
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
    iput-object p1, p0, Lg/j$b;->b:Lg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lg/j$b;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public R(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg/j$b;->b:Lg/j;

    iget v0, v0, Lg/j;->n0:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/syu/jni/ToolsJni;->getUsbIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lg/j$b;->a:Ljava/lang/Integer;

    .line 3
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lg/j$b;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v2, p1}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lg/j$b;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 7
    invoke-static {v1, v2}, Lcom/syu/jni/ToolsJni;->setUsbIndex(II)I

    :cond_2
    :goto_0
    return-void
.end method
