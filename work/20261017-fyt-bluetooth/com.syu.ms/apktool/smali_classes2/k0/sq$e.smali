.class public Lk0/sq$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sq;


# direct methods
.method public constructor <init>(Lk0/sq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sq$e;->a:Lk0/sq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/sq;->H:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    .line 2
    sget v1, Lk0/sq;->H:I

    if-eq v1, v0, :cond_0

    const/16 v0, 0xff

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/sq$e;->a:Lk0/sq;

    iget-boolean v1, v0, Lk0/sq;->t:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lk0/sq;->b3(Lk0/sq;Z)V

    .line 6
    :cond_2
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/sq;->H:I

    :cond_3
    return-void

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xb0
        0x3
    .end array-data
.end method
