.class public Lk0/u8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/u8;->Z0(I[I[F[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:Lk0/u8;


# direct methods
.method public constructor <init>(Lk0/u8;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk0/u8$a;->b:Lk0/u8;

    iput-object p2, p0, Lk0/u8$a;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x20

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    .line 1
    iget-object v1, p0, Lk0/u8$a;->a:[I

    aget v1, v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v1, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
