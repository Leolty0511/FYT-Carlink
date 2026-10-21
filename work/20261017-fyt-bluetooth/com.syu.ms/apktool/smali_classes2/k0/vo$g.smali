.class public Lk0/vo$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vo;


# direct methods
.method public constructor <init>(Lk0/vo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vo$g;->a:Lk0/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/vo;->T:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    .line 2
    sget v1, Lk0/vo;->T:I

    if-ne v1, v0, :cond_0

    .line 3
    invoke-static {}, Lk0/vo;->c3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/vo$g;->a:Lk0/vo;

    iget-boolean v1, v0, Lk0/vo;->t:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lk0/vo;->b3(Lk0/vo;Z)V

    .line 6
    :cond_1
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/vo;->T:I

    :cond_2
    return-void
.end method
