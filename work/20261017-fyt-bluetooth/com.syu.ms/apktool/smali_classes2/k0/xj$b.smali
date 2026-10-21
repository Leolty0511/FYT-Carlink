.class public Lk0/xj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xj;


# direct methods
.method public constructor <init>(Lk0/xj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xj$b;->a:Lk0/xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/xj$b;->a:Lk0/xj;

    const/4 v1, 0x0

    iput v1, v0, Lk0/xj;->h:I

    .line 2
    iput v1, v0, Lk0/xj;->i:I

    .line 3
    iget-object v0, v0, Lk0/xj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/xj$b;->a:Lk0/xj;

    const/4 v1, 0x5

    iput v1, v0, Lk0/xj;->k:I

    return-void
.end method
