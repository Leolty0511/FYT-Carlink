.class public Lk0/ke$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ke;


# direct methods
.method public constructor <init>(Lk0/ke;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ke$b;->a:Lk0/ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ke$b;->a:Lk0/ke;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const/16 v2, -0x6e

    invoke-static {v0, v2, v1}, Lk0/ke;->j3(Lk0/ke;BLjava/lang/String;)V

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk0/ke$b;->a:Lk0/ke;

    const/16 v1, -0x6c

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk0/ke;->j3(Lk0/ke;BLjava/lang/String;)V

    :cond_0
    return-void
.end method
