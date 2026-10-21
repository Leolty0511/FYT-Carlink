.class public Lg/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/b;


# direct methods
.method public constructor <init>(Lg/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/b$g;->a:Lg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-boolean v0, Le1/q;->n:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {v1}, Lu0/d;->C(I)V

    .line 4
    iget-object v0, p0, Lg/b$g;->a:Lg/b;

    invoke-static {v0}, Lg/b;->f(Lg/b;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lg/f;->v(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
