.class public Lk0/cl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cl;


# direct methods
.method public constructor <init>(Lk0/cl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cl$a;->a:Lk0/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/cl$a;->a:Lk0/cl;

    iget-object v0, v0, Lk0/cl;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/cl$a;->a:Lk0/cl;

    const/4 v1, 0x5

    iput v1, v0, Lk0/cl;->j:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/cl;->h:I

    .line 4
    iput v1, v0, Lk0/cl;->i:I

    return-void
.end method
