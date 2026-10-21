.class public Lk0/uk$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/uk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/uk;


# direct methods
.method public constructor <init>(Lk0/uk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/uk$d;->a:Lk0/uk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/uk$d;->a:Lk0/uk;

    iget-object v0, v0, Lk0/uk;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/uk$d;->a:Lk0/uk;

    const/4 v1, 0x5

    iput v1, v0, Lk0/uk;->u:I

    return-void
.end method
