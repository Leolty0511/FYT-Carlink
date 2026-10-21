.class public Lk0/ja$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ja;


# direct methods
.method public constructor <init>(Lk0/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ja$e;->a:Lk0/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ja$e;->a:Lk0/ja;

    invoke-static {v0}, Lk0/ja;->q3(Lk0/ja;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ja$e;->a:Lk0/ja;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/ja;->A:B

    return-void
.end method
