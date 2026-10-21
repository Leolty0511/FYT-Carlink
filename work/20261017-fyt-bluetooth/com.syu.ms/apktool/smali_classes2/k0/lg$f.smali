.class public Lk0/lg$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lg;


# direct methods
.method public constructor <init>(Lk0/lg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lg$f;->a:Lk0/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/lg$f;->a:Lk0/lg;

    iget v1, v1, Lk0/lg;->v:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/lg$f;->a:Lk0/lg;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/lg;->v:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x4
        0x0
    .end array-data
.end method
