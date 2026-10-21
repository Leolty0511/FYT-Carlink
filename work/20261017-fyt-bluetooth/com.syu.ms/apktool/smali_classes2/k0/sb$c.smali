.class public Lk0/sb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sb;


# direct methods
.method public constructor <init>(Lk0/sb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sb$c;->a:Lk0/sb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f2:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lk0/sb$c;->a:Lk0/sb;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lk0/sb;->d3(Lk0/sb;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lk0/sb$c;->a:Lk0/sb;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lk0/sb;->d3(Lk0/sb;I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lk0/sb$c;->a:Lk0/sb;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lk0/sb;->d3(Lk0/sb;I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lk0/sb$c;->a:Lk0/sb;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lk0/sb;->d3(Lk0/sb;I)V

    :goto_0
    return-void
.end method
