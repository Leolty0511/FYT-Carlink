.class public Lk0/hj$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hj;


# direct methods
.method public constructor <init>(Lk0/hj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hj$f;->a:Lk0/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/hj$f;->a:Lk0/hj;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    const/16 v2, 0xd3

    invoke-static {v0, v2, v1}, Lk0/hj;->i3(Lk0/hj;ILjava/lang/String;)V

    return-void
.end method
