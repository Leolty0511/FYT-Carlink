.class Landroid/util/RecurrenceRule$RecurringIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecurringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/util/Pair<",
        "Ljava/time/ZonedDateTime;",
        "Ljava/time/ZonedDateTime;",
        ">;>;"
    }
.end annotation


# instance fields
.field cycleEnd:Ljava/time/ZonedDateTime;

.field cycleStart:Ljava/time/ZonedDateTime;

.field i:I

.field final synthetic this$0:Landroid/util/RecurrenceRule;


# direct methods
.method public constructor <init>(Landroid/util/RecurrenceRule;)V
    .locals 5

    .line 1
    iput-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Landroid/util/RecurrenceRule;->sClock:Ljava/time/Clock;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p1, p1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Resolving using anchor "

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "RecurrenceRule"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    iget-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    cmp-long p1, v1, v3

    .line 60
    .line 61
    if-lez p1, :cond_1

    .line 62
    .line 63
    iget p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    .line 67
    iput p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 68
    .line 69
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    iget-object p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    cmp-long p1, v1, v3

    .line 84
    .line 85
    if-gtz p1, :cond_2

    .line 86
    .line 87
    iget p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 88
    .line 89
    add-int/lit8 p1, p1, -0x1

    .line 90
    .line 91
    iput p1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 92
    .line 93
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    return-void
.end method

.method private roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/RecurrenceRule;->isMonthly()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/util/a;->b(Ljava/time/ZonedDateTime;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 14
    .line 15
    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/util/a;->b(Ljava/time/ZonedDateTime;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Landroid/app/e;->m(Ljava/time/ZonedDateTime;)Ljava/time/LocalDate;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Landroid/util/a;->C()Ljava/time/LocalTime;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 32
    .line 33
    iget-object v1, v1, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/util/a;->p(Ljava/time/ZonedDateTime;)Ljava/time/ZoneId;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p1, v0, v1}, Landroid/util/a;->q(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_0
    return-object p1
.end method

.method private updateCycle()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 6
    .line 7
    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 8
    .line 9
    invoke-static {v0, v2}, Landroid/util/a;->o(Ljava/time/Period;I)Ljava/time/Period;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v1, v0}, Landroid/util/a;->r(Ljava/time/ZonedDateTime;Ljava/time/Period;)Ljava/time/ZonedDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    .line 22
    .line 23
    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    .line 24
    .line 25
    iget-object v1, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 26
    .line 27
    iget-object v0, v0, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 28
    .line 29
    iget v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/util/a;->o(Ljava/time/Period;I)Ljava/time/Period;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/a;->r(Ljava/time/ZonedDateTime;Ljava/time/Period;)Ljava/time/ZonedDateTime;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Landroid/util/RecurrenceRule$RecurringIterator;->roundBoundaryTime(Ljava/time/ZonedDateTime;)Ljava/time/ZonedDateTime;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    iget-object v0, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->this$0:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/ZonedDateTime;",
            "Ljava/time/ZonedDateTime;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cycle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecurrenceRule"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleStart:Ljava/time/ZonedDateTime;

    iget-object v2, p0, Landroid/util/RecurrenceRule$RecurringIterator;->cycleEnd:Ljava/time/ZonedDateTime;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/RecurrenceRule$RecurringIterator;->i:I

    .line 5
    invoke-direct {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->updateCycle()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/RecurrenceRule$RecurringIterator;->next()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
