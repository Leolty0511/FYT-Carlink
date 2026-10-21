.class public Lk0/wp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wp;


# direct methods
.method public constructor <init>(Lk0/wp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wp$a;->a:Lk0/wp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/wp$a;->a:Lk0/wp;

    iget v1, v0, Lk0/wp;->g:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/wp;->g:I

    .line 2
    :cond_0
    iget v0, v0, Lk0/wp;->g:I

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ll0/c0;->I()V

    :cond_1
    return-void
.end method
