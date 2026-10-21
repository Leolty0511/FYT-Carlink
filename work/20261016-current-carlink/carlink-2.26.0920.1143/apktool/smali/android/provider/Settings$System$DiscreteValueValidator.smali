.class final Landroid/provider/Settings$System$DiscreteValueValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiscreteValueValidator"
.end annotation


# instance fields
.field private final mValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/provider/Settings$System$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/provider/Settings$System$DiscreteValueValidator;->mValues:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
