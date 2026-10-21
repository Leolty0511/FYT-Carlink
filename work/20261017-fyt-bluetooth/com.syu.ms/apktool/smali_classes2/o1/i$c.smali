.class public Lo1/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/i;


# direct methods
.method public constructor <init>(Lo1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i$c;->a:Lo1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/i$c;->a:Lo1/i;

    iget-boolean v1, v0, Lo1/i;->b:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lo1/i;->d(Lo1/i;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/i;->e(Lo1/i;Landroid/location/Location;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v1, Lo1/i;->o:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lo1/i;->e(Lo1/i;Landroid/location/Location;)V

    :cond_1
    :goto_0
    return-void
.end method
