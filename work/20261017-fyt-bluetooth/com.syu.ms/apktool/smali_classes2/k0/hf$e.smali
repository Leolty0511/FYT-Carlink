.class public Lk0/hf$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hf;


# direct methods
.method public constructor <init>(Lk0/hf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hf$e;->a:Lk0/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/hf$e;->a:Lk0/hf;

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lu0/b;->a0:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x81

    invoke-static {v0, v3, v1, v2}, Lk0/hf;->b3(Lk0/hf;II[I)V

    return-void
.end method
