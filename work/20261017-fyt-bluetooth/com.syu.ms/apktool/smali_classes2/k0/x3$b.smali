.class public Lk0/x3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$b;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/x3$b;->a:Lk0/x3;

    iget v1, v0, Lk0/x3;->e0:I

    sget v2, Lu0/b;->o:I

    if-eq v1, v2, :cond_0

    .line 2
    iput v2, v0, Lk0/x3;->e0:I

    if-nez v2, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lk0/qt;->a(I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data
.end method
