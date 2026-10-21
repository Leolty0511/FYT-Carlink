.class public Lk0/oo$c;
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
    iput-object p1, p0, Lk0/oo$c;->a:Lk0/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/oo$c;->a:Lk0/oo;

    iget v1, v0, Lk0/oo;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/oo;->m:I

    return-void
.end method
