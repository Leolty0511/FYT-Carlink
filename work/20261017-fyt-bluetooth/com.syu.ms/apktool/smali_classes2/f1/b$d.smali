.class public Lf1/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/b;


# direct methods
.method public constructor <init>(Lf1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$d;->a:Lf1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b$d;->a:Lf1/b;

    iget-boolean v0, v0, Lf1/q;->x:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "persist.lesc.video.ignore"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 2
    iget-object v0, p0, Lf1/b$d;->a:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->D()V

    :cond_1
    return-void
.end method
