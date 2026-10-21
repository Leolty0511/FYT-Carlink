.class public Lk0/sd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/sd;->a3(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk0/sd;


# direct methods
.method public constructor <init>(Lk0/sd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lk0/sd$a;->b:Lk0/sd;

    iput p2, p0, Lk0/sd$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/sd$a;->b:Lk0/sd;

    iget v1, p0, Lk0/sd$a;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lk0/sd;->b3(II)V

    .line 2
    iget-object v0, p0, Lk0/sd$a;->b:Lk0/sd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lk0/sd;->I:Z

    return-void
.end method
