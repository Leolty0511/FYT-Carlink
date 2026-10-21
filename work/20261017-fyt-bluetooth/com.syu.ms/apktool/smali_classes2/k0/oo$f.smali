.class public Lk0/oo$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oo;


# direct methods
.method public constructor <init>(Lk0/oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oo$f;->a:Lk0/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oo$f;->a:Lk0/oo;

    iget v1, v0, Lk0/oo;->r:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, v0, Lk0/oo;->r:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/oo;->r:I

    if-nez v1, :cond_1

    .line 4
    invoke-static {v0}, Lk0/oo;->t3(Lk0/oo;)V

    :cond_1
    return-void
.end method
