.class public Lk0/oj$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oj;


# direct methods
.method public constructor <init>(Lk0/oj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oj$e;->a:Lk0/oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/oj$e;->a:Lk0/oj;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/oj;->h3(Lk0/oj;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lk0/oj$e;->a:Lk0/oj;

    sget-object v1, Lh0/c;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/oj;->h3(Lk0/oj;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
