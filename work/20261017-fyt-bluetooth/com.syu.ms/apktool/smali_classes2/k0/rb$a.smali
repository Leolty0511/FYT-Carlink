.class public Lk0/rb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rb;


# direct methods
.method public constructor <init>(Lk0/rb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rb$a;->a:Lk0/rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/rb$a;->a:Lk0/rb;

    iget v1, v0, Lk0/rb;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/rb;->e:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/rb$a;->a:Lk0/rb;

    const/4 v1, 0x0

    iput v1, v0, Lk0/rb;->e:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
