.class public Lz/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/i;->f([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lz/i;


# direct methods
.method public constructor <init>(Lz/i;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lz/i$b;->d:Lz/i;

    iput-object p2, p0, Lz/i$b;->a:[B

    iput p3, p0, Lz/i$b;->b:I

    iput p4, p0, Lz/i$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, La1/b;->b:La1/d;

    check-cast v0, La1/a;

    iget-object v1, p0, Lz/i$b;->a:[B

    iget v2, p0, Lz/i$b;->b:I

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lz/i$b;->c:I

    add-int/2addr v2, v4

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La1/a;->n([B)V

    return-void
.end method
