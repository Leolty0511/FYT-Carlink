.class public Lk0/mb$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/mb;


# direct methods
.method public constructor <init>(Lk0/mb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mb$b;->a:Lk0/mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/mb$b;->a:Lk0/mb;

    iget v1, v1, Lk0/mb;->j:I

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/mb$b;->a:Lk0/mb;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/mb;->j:I

    :cond_1
    return-void

    :array_0
    .array-data 4
        0xe3
        0x5
        0xc6
        0x4
        0x0
    .end array-data
.end method
