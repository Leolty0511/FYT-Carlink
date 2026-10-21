.class public Le1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/e;


# direct methods
.method public constructor <init>(Le1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/e$c;->a:Le1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/e$c;->a:Le1/e;

    iget-boolean v0, v0, Le1/c;->q:Z

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
    iget-object v0, p0, Le1/e$c;->a:Le1/e;

    invoke-virtual {v0}, Le1/e;->t()V

    :cond_1
    return-void
.end method
