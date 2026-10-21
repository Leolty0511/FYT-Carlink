.class public Lk0/ti$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ti;


# direct methods
.method public constructor <init>(Lk0/ti;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ti$b;->a:Lk0/ti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/ti$b;->a:Lk0/ti;

    invoke-static {v1}, Lk0/ti;->d3(Lk0/ti;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
