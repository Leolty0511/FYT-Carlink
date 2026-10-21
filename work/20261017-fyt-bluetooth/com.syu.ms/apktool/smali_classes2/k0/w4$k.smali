.class public Lk0/w4$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/w4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/w4;


# direct methods
.method public constructor <init>(Lk0/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/w4$k;->a:Lk0/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/w4$k;->a:Lk0/w4;

    iget v3, v0, Lk0/w4;->z:I

    if-lez v3, :cond_1

    sub-int/2addr v3, v2

    .line 4
    iput v3, v0, Lk0/w4;->z:I

    .line 5
    :cond_1
    iget v3, v0, Lk0/w4;->y:I

    if-ne v3, v2, :cond_2

    iget v0, v0, Lk0/w4;->z:I

    if-nez v0, :cond_2

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x22
        0x0
    .end array-data
.end method
