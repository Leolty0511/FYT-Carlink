.class public Lk0/it$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/it;


# direct methods
.method public constructor <init>(Lk0/it;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/it$b;->a:Lk0/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 1
    iget-object v1, p0, Lk0/it$b;->a:Lk0/it;

    iget v2, v1, Lk0/it;->z:I

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v1, v1, Lk0/it;->A:I

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
