.class public Le1/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/q;


# direct methods
.method public constructor <init>(Le1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/q$c;->a:Le1/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Le1/q;->k:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le1/q$c;->a:Le1/q;

    sget v3, Le1/q;->j:I

    invoke-static {v0, v3, v2}, Le1/q;->j(Le1/q;II)I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    sput-boolean v2, Le1/q;->k:Z

    .line 4
    invoke-static {v1}, Lcom/syu/jni/ToolsJni;->cmd_33_reset_videoIc(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Le1/q$c;->a:Le1/q;

    invoke-static {v0}, Le1/q;->k(Le1/q;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le1/q$c;->a:Le1/q;

    invoke-static {v0}, Le1/q;->l(Le1/q;)I

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "sys.fyt.video.debug"

    .line 7
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 8
    :goto_1
    iget-object v0, p0, Le1/q$c;->a:Le1/q;

    invoke-static {v0, v1}, Le1/q;->m(Le1/q;I)V

    .line 9
    invoke-static {v1}, Lu0/d;->o3(I)V

    return-void
.end method
