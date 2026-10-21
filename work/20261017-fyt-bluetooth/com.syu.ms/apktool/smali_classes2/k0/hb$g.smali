.class public Lk0/hb$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hb;


# direct methods
.method public constructor <init>(Lk0/hb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hb$g;->a:Lk0/hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/hb$g;->a:Lk0/hb;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lk0/hb;->d3(Lk0/hb;BLjava/lang/String;)V

    const-wide/16 v0, 0x32

    .line 2
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 3
    iget-object v0, p0, Lk0/hb$g;->a:Lk0/hb;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lk0/hb;->d3(Lk0/hb;BLjava/lang/String;)V

    return-void
.end method
