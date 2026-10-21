.class public Landroid/telephony/SubscriptionPlan$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionPlan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final plan:Landroid/telephony/SubscriptionPlan;


# direct methods
.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/telephony/SubscriptionPlan;

    .line 5
    .line 6
    new-instance v1, Landroid/util/RecurrenceRule;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2, p3}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {v0, v1, p1}, Landroid/telephony/SubscriptionPlan;-><init>(Landroid/util/RecurrenceRule;Landroid/telephony/SubscriptionPlan$1;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 16
    .line 17
    return-void
.end method

.method public static createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3

    .line 1
    invoke-virtual {p1, p0}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "End "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " isn\'t after start "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static createRecurringDaily(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    invoke-static {}, Landroid/app/e;->D()Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    invoke-static {}, Landroid/app/e;->o()Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method

.method public static createRecurringWeekly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3

    new-instance v0, Landroid/telephony/SubscriptionPlan$Builder;

    invoke-static {}, Landroid/app/e;->A()Ljava/time/Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/telephony/SubscriptionPlan;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    return-object v0
.end method

.method public setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    if-ltz p3, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 10
    .line 11
    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->access$402(Landroid/telephony/SubscriptionPlan;J)J

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 15
    .line 16
    invoke-static {p1, p3}, Landroid/telephony/SubscriptionPlan;->access$502(Landroid/telephony/SubscriptionPlan;I)I

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Limit behavior must be defined"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p2, "Limit bytes must be positive"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_1

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Landroid/telephony/SubscriptionPlan;->access$602(Landroid/telephony/SubscriptionPlan;J)J

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    .line 17
    .line 18
    invoke-static {p1, p3, p4}, Landroid/telephony/SubscriptionPlan;->access$702(Landroid/telephony/SubscriptionPlan;J)J

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p2, "Usage time must be positive"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "Usage bytes must be positive"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->access$302(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionPlan$Builder;->plan:Landroid/telephony/SubscriptionPlan;

    invoke-static {v0, p1}, Landroid/telephony/SubscriptionPlan;->access$202(Landroid/telephony/SubscriptionPlan;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method
