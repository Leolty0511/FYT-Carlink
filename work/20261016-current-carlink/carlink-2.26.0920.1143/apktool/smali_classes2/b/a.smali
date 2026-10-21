.class public final synthetic Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb/a;->b:I

    check-cast p1, Landroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/ImsFeature;->a(ILandroid/telephony/ims/feature/ImsFeature$INotifyFeatureRemoved;)V

    return-void
.end method
