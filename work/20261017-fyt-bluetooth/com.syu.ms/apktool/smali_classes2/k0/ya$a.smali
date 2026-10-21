.class public Lk0/ya$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ya;


# direct methods
.method public constructor <init>(Lk0/ya;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ya$a;->a:Lk0/ya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ya$a;->a:Lk0/ya;

    iget v1, v0, Lk0/ya;->b:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/ya;->b:I

    .line 2
    :cond_0
    iget v1, v0, Lk0/ya;->b:I

    if-nez v1, :cond_1

    .line 3
    invoke-static {v0}, Lk0/ya;->f3(Lk0/ya;)V

    :cond_1
    return-void
.end method
