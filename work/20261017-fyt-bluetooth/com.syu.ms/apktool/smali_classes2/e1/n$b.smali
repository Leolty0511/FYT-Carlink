.class public Le1/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/n;


# direct methods
.method public constructor <init>(Le1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/n$b;->a:Le1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Le1/n;->t:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le1/n$b;->a:Le1/n;

    invoke-static {v0}, Le1/n;->l(Le1/n;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Le1/n;->t:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
