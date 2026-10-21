.class public Lk0/es$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$g;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/es;->I:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    .line 2
    sget v1, Lk0/es;->I:I

    if-ne v1, v0, :cond_0

    .line 3
    invoke-static {}, Lk0/es;->e3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/es$g;->a:Lk0/es;

    iget-boolean v1, v0, Lk0/es;->x:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lk0/es;->b3(Lk0/es;Z)V

    .line 6
    :cond_1
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/es;->I:I

    :cond_2
    return-void
.end method
