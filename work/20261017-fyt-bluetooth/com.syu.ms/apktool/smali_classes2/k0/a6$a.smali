.class public Lk0/a6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a6;


# direct methods
.method public constructor <init>(Lk0/a6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a6$a;->a:Lk0/a6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/a6$a;->a:Lk0/a6;

    iget v1, v0, Lk0/a6;->e:I

    if-eqz v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/a6;->e:I

    :cond_0
    return-void
.end method
